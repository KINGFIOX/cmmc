/*
    SPDX-License-Identifier: Apache-2.0
    Copyright 2023 CMMC Authors
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at
        http://www.apache.org/licenses/LICENSE-2.0
    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/LiveInterval.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/CodeGen/MIRCFGAnalysis.hpp>
#include <cmmc/CodeGen/RegisterAllocator.hpp>
#include <cmmc/CodeGen/RegisterInfo.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <cstddef>
#include <cstdint>
#include <iostream>
#include <iterator>
#include <limits>
#include <optional>
#include <ostream>
#include <queue>
#include <set>
#include <stack>
#include <unordered_map>
#include <unordered_set>
#include <vector>

// Classic graph-coloring-based RA
// Reference: https://web.cecs.pdx.edu/~mperkows/temp/register-allocation.pdf

CMMC_MIR_NAMESPACE_BEGIN

struct RegNumComparator final {
    const std::unordered_map<RegNum, double>* weights;

    bool operator()(RegNum lhs, RegNum rhs) const {
        return weights->at(lhs) > weights->at(rhs);
    }
};

class InterferenceGraph final {
    std::unordered_map<RegNum, std::unordered_set<RegNum>> mAdj;
    std::unordered_map<RegNum, uint32_t> mDegree;
    using Queue = std::priority_queue<RegNum, std::vector<RegNum>, RegNumComparator>;
    Queue mQueue;

public:
    void addEdge(RegNum lhs, RegNum rhs) {
        assert(lhs != rhs);
        assert((isVirtualReg(lhs) || isISAReg(lhs)) && (isVirtualReg(rhs) || isISAReg(rhs)));
        if(mAdj[lhs].count(rhs))
            return;
        mAdj[lhs].insert(rhs);
        mAdj[rhs].insert(lhs);
        if(isVirtualReg(lhs))
            ++mDegree[lhs];
        if(isVirtualReg(rhs))
            ++mDegree[rhs];
    }
    void touch(RegNum u) {
        if(!mDegree.count(u))
            mDegree[u] = 0U;
    }
    void prepareForAssign(const std::unordered_map<RegNum, double>& weights, uint32_t k) {
        mQueue = Queue{ RegNumComparator{ &weights } };
        for(auto& [reg, degree] : mDegree) {
            if(degree < k) {
                assert(isVirtualReg(reg));
                mQueue.push(reg);
            }
        }
    }
    auto& adj(RegNum u) {
        assert(isVirtualReg(u));
        return mAdj[u];
    }
    RegNum pickToAssign(uint32_t k) {
        if(mQueue.empty())
            return invalidReg;
        auto u = mQueue.top();
        mQueue.pop();
        assert(isVirtualReg(u));
        assert(adj(u).size() < k);

        if(auto iter = mAdj.find(u); iter != mAdj.cend()) {
            for(auto v : mAdj.at(u)) {
                if(isVirtualReg(v)) {
                    if(mDegree[v] == k)
                        mQueue.push(v);
                    --mDegree[v];
                }
                mAdj[v].erase(u);
            }
            mAdj.erase(iter);
        }
        mDegree.erase(u);
        return u;
    }
    RegNum pickToSpill(const std::unordered_set<uint32_t>& blockList, const std::unordered_map<RegNum, double>& weights,
                       uint32_t k) const {
        constexpr uint32_t fallbackThreshold = 0;
        RegNum best = invalidReg;
        if(blockList.size() >= fallbackThreshold) {
            double minWeight = 1e40;
            uint32_t maxDegree = 0;
            for(auto& [reg, degree] : mDegree) {
                if(degree >= maxDegree && !blockList.count(reg)) {
                    if(maxDegree == degree && weights.at(reg) >= minWeight)
                        continue;
                    maxDegree = degree;
                    minWeight = weights.at(reg);
                    best = reg;
                }
            }
        } else {
            double minWeight = 1e40;
            for(auto& [reg, degree] : mDegree) {
                if(degree >= k && !blockList.count(reg) && weights.at(reg) < minWeight) {
                    best = reg;
                    minWeight = weights.at(reg);
                }
            }
        }
        assert(best != invalidReg && isVirtualReg(best));
        return best;
    }

    void dump(std::ostream& out) {
        for(auto& [vreg, degree] : mDegree) {
            out << (vreg ^ virtualRegBegin) << "[" << degree << "]: ";
            for(auto adj : mAdj[vreg]) {
                if(isVirtualReg(adj))
                    out << 'v';
                else
                    out << 'i';
                out << (isVirtualReg(adj) ? adj ^ virtualRegBegin : adj) << ' ';
            }
            out << '\n';
        }
    }
    [[nodiscard]] bool empty() const {
        return mDegree.empty();
    }
    [[nodiscard]] size_t size() const {
        return mDegree.size();
    }

    auto collectNodes() const {
        std::vector<RegNum> vregs;
        vregs.reserve(mDegree.size());
        for(auto [reg, degree] : mDegree) {
            CMMC_UNUSED(degree);
            vregs.push_back(reg);
        }
        return vregs;
    }
};

static void graphColoringAllocateImpl(MIRFunction& mfunc, CodeGenContext& ctx, IPRAUsageCache& infoIPRA, uint32_t allocationClass,
                                      std::unordered_map<uint32_t, uint32_t>& regMap) {
    const auto canonicalizedType = ctx.registerInfo->getCanonicalizedRegisterTypeForClass(allocationClass);
    const auto& list = ctx.registerInfo->getAllocationList(allocationClass);
    const std::unordered_set<uint32_t> allocableISARegs{ list.cbegin(), list.cend() };
    std::unordered_set<uint32_t> blockList;
    bool fixHazard = ctx.scheduleModel.getInfo().enablePostRAScheduling && !ctx.scheduleModel.getInfo().hasRegRenaming;
    constexpr auto debugRA = false;

    if(debugRA) {
        std::cerr << "allocate for class " << allocationClass << std::endl;
    }

    std::unordered_map<uint32_t, MIROperand> inStackArguments;
    std::unordered_map<uint32_t, MIRInst*> constants;
    for(auto& inst : mfunc.blocks().front()->instructions()) {
        if(inst.opcode() == InstLoadRegFromStack) {
            const auto dst = inst.getOperand(0).reg();
            const auto src = inst.getOperand(1);
            const auto& obj = mfunc.stackObjects().at(src);
            if(obj.usage == StackObjectUsage::Argument) {
                inStackArguments.emplace(dst, src);
            }
        }
    }
    for(auto& block : mfunc.blocks()) {
        for(auto& inst : block->instructions()) {
            const auto& instInfo = ctx.instInfo.getInstInfo(inst);

            if(requireFlag(instInfo.getInstFlag(), InstFlagLoadConstant)) {
                const auto reg = inst.getOperand(0).reg();
                if(isVirtualReg(reg)) {
                    if(!constants.count(reg))
                        constants[reg] = &inst;
                    else
                        constants[reg] = nullptr;
                }
            } else {
                for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                    const auto flag = instInfo.getOperandFlag(idx);
                    if(!(flag & OperandFlagDef))
                        continue;
                    auto& op = inst.getOperand(idx);
                    if(isOperandVReg(op)) {
                        constants[op.reg()] = nullptr;
                    }
                }
            }
        }
    }
    {
        std::vector<uint32_t> eraseKey;
        for(auto [k, v] : constants)
            if(!v)
                eraseKey.push_back(k);
        for(auto k : eraseKey)
            constants.erase(k);
    }

    while(true) {
        auto liveInterval = calcLiveIntervals(mfunc, ctx);
        if(debugRA)
            mfunc.dump(std::cerr, ctx);

        const auto isAllocatableType = [&](OperandType type) {
            return (type <= OperandType::Float32) && (ctx.registerInfo->getAllocationClass(type) == allocationClass);
        };
        const auto isLockedOrUnderRenamedType = [&](OperandType type) { return (type <= OperandType::Float32); };
        std::unordered_set<RegNum> vregSet;
        for(auto& block : mfunc.blocks()) {
            for(auto& inst : block->instructions()) {
                auto& instInfo = ctx.instInfo.getInstInfo(inst);
                for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                    const auto flag = instInfo.getOperandFlag(idx);
                    if(!((flag & OperandFlagUse) || (flag & OperandFlagDef)))
                        continue;
                    auto& op = inst.getOperand(idx);
                    if(!(isOperandVReg(op) && isAllocatableType(op.type())))
                        continue;
                    vregSet.insert(op.reg());
                }
            }
        }

        std::unordered_map<RegNum, std::set<InstNum>> defUseTime;
        auto colorDefUse = [&](RegNum src, RegNum dst) {
            assert(isVirtualReg(src) && isISAReg(dst));
            if(!fixHazard || !defUseTime.count(src))
                return;
            auto& dstInfo = defUseTime[dst];
            auto& srcInfo = defUseTime[src];
            dstInfo.insert(srcInfo.begin(), srcInfo.end());
        };

        std::unordered_map<RegNum, std::unordered_map<RegNum, double>> copyHint;
        auto updateCopyHint = [&](RegNum dst, RegNum src, double weight) {
            assert(isVirtualReg(dst));
            copyHint[dst][src] += weight;
        };
        // Construct interference graph
        InterferenceGraph graph;
        const auto cfg = calcCFG(mfunc, ctx);
        const auto blockFreq = calcFreq(mfunc, cfg);
        // ISA specific reg
        for(auto& block : mfunc.blocks()) {
            auto& instructions = block->instructions();
            std::unordered_set<uint32_t> underRenamedISAReg;
            std::unordered_set<uint32_t> lockedISAReg;

            const auto collectUnderRenamedISARegs = [&](MIRInstList::iterator it) {
                while(it != instructions.end()) {
                    const auto& inst = *it;
                    auto& instInfo = ctx.instInfo.getInstInfo(inst);
                    bool hasReg = false;
                    for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                        const auto& op = inst.getOperand(idx);
                        if(isOperandISAReg(op) && !ctx.registerInfo->isZeroRegister(op.reg()) &&
                           isLockedOrUnderRenamedType(op.type()) && (instInfo.getOperandFlag(idx) & OperandFlagUse)) {
                            if(isAllocatableType(op.type()))
                                underRenamedISAReg.insert(op.reg());
                            hasReg = true;
                        }
                    }
                    if(hasReg)
                        ++it;
                    else
                        break;
                }
            };

            collectUnderRenamedISARegs(instructions.begin());
            std::unordered_set<uint32_t> liveVRegs;
            for(auto vreg : liveInterval.blockInfo.at(block.get()).ins) {
                assert(isVirtualReg(vreg));
                if(vregSet.count(vreg))
                    liveVRegs.insert(vreg);
            }
            const auto tripCount = blockFreq.query(block.get());
            for(auto iter = instructions.begin(); iter != instructions.end();) {
                const auto next = std::next(iter);
                auto& inst = *iter;
                auto& instInfo = ctx.instInfo.getInstInfo(inst);
                if(inst.opcode() == InstCopyFromReg && allocableISARegs.count(inst.getOperand(1).reg())) {
                    updateCopyHint(inst.getOperand(0).reg(), inst.getOperand(1).reg(), tripCount);
                } else if(inst.opcode() == InstCopyToReg && allocableISARegs.count(inst.getOperand(0).reg())) {
                    updateCopyHint(inst.getOperand(1).reg(), inst.getOperand(0).reg(), tripCount);
                } else if(inst.opcode() == InstCopy) {
                    const auto u = inst.getOperand(0).reg();
                    const auto v = inst.getOperand(1).reg();
                    if(u != v) {
                        if(isVirtualReg(u))
                            updateCopyHint(u, v, tripCount);
                        if(isVirtualReg(v))
                            updateCopyHint(v, u, tripCount);
                    }
                }

                for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                    if(instInfo.getOperandFlag(idx) & OperandFlagUse) {
                        auto& op = inst.getOperand(idx);
                        if(!isAllocatableType(op.type()))
                            continue;
                        if(!isOperandVRegOrISAReg(op))
                            continue;
                        defUseTime[op.reg()].insert(liveInterval.instNum.at(&inst));
                        if(isOperandISAReg(op) && !ctx.registerInfo->isZeroRegister(op.reg())) {
                            underRenamedISAReg.erase(op.reg());
                        } else if(isOperandVReg(op)) {
                            graph.touch(op.reg());
                            if(op.regFlag() & RegisterFlagDead)
                                liveVRegs.erase(op.reg());
                        }
                    }
                }
                if(requireFlag(instInfo.getInstFlag(), InstFlagCall)) {
                    const IPRAInfo* calleeUsage = nullptr;
                    if(auto symbol = inst.getOperand(0).reloc()) {
                        calleeUsage = infoIPRA.query(symbol);
                    }

                    if(calleeUsage) {
                        for(auto isaReg : *calleeUsage)
                            if(isAllocatableType(isaReg.type())) {
                                for(auto vreg : liveVRegs)
                                    graph.addEdge(vreg, isaReg.reg());
                            }
                    } else {
                        for(auto isaReg : ctx.registerInfo->getAllocationList(allocationClass))
                            if(ctx.frameInfo.isCallerSaved(MIROperand::asISAReg(isaReg, OperandType::Special))) {
                                for(auto vreg : liveVRegs)
                                    graph.addEdge(isaReg, vreg);
                            }
                    }

                    collectUnderRenamedISARegs(next);
                    lockedISAReg.clear();
                }
                for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                    if(instInfo.getOperandFlag(idx) & OperandFlagDef) {
                        auto& op = inst.getOperand(idx);
                        if(!isAllocatableType(op.type()))
                            continue;
                        defUseTime[op.reg()].insert(liveInterval.instNum.at(&inst));
                        if(isOperandISAReg(op) && !ctx.registerInfo->isZeroRegister(op.reg())) {
                            lockedISAReg.insert(op.reg());
                            for(auto vreg : liveVRegs)
                                graph.addEdge(vreg, op.reg());
                        } else if(isOperandVReg(op)) {
                            liveVRegs.insert(op.reg());
                            graph.touch(op.reg());
                            for(auto isaReg : underRenamedISAReg)
                                graph.addEdge(op.reg(), isaReg);
                            for(auto isaReg : lockedISAReg)
                                graph.addEdge(op.reg(), isaReg);
                        }
                    }
                }

                iter = next;
            }
        }

        auto vregs = graph.collectNodes();
        assert(vregs.size() == vregSet.size());
        if(debugRA) {
            std::cerr << vregs.size() << std::endl;
        }
        for(size_t i = 0; i < vregs.size(); ++i) {
            auto u = vregs[i];
            auto& intervalU = liveInterval.interval.at(u);
            for(size_t j = i + 1; j < vregs.size(); ++j) {
                auto& v = vregs[j];
                auto& intervalV = liveInterval.interval.at(v);
                if(intervalU.intersectWith(intervalV)) {
                    // if(debugRA) {
                    //     std::cerr << (u ^ virtualRegBegin) << " <-> " << (v ^ virtualRegBegin) << std::endl;
                    //     intervalU.dump(std::cerr);
                    //     std::cerr << '\n';
                    //     intervalV.dump(std::cerr);
                    //     std::cerr << '\n';
                    // }

                    graph.addEdge(u, v);
                }
            }
        }

        if(graph.empty())
            return;
        assert(vregs.size() == graph.size());
        // if(debugRA) {
        //     graph.dump(std::cerr);
        // }

        // Calculate weights for virtual registers

        // Weight = \sum (number of use/def) * Freq
        std::vector<std::pair<InstNum, double>> freq;
        for(auto& block : mfunc.blocks()) {
            auto endInst = liveInterval.instNum.at(&block->instructions().back());
            freq.emplace_back(endInst + 2, blockFreq.query(block.get()));
        }
        std::unordered_map<RegNum, double> weights;
        auto getBlockFreq = [&](InstNum inst) {
            const auto it =
                std::lower_bound(freq.begin(), freq.end(), inst, [](const auto& a, const auto& b) { return a.first < b; });
            assert(it != freq.end());
            return it->second;
        };
        for(auto vreg : vregs) {
            auto& liveRange = liveInterval.interval.at(vreg);
            double weight = 0;
            for(auto& [beg, end] : liveRange.segments) {
                weight += static_cast<double>(end - beg) * getBlockFreq(end);
            }
            if(auto iter = copyHint.find(vreg); iter != copyHint.end())
                weight += 100.0 * static_cast<double>(iter->second.size());
            if(constants.count(vreg))
                weight -= 1.0;
            weights.emplace(vreg, weight);
        }
        for(auto& block : mfunc.blocks()) {
            const auto w = blockFreq.query(block.get());
            for(auto& inst : block->instructions()) {
                auto& instInfo = ctx.instInfo.getInstInfo(inst);
                for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                    const auto flag = instInfo.getOperandFlag(idx);
                    if(!((flag & OperandFlagUse) || (flag & OperandFlagDef)))
                        continue;
                    auto& op = inst.getOperand(idx);
                    if(!(isOperandVReg(op) && isAllocatableType(op.type())))
                        continue;
                    weights[op.reg()] += w;
                }
            }
        }
        // Assign registers

        const auto k = static_cast<uint32_t>(list.size());
        std::stack<uint32_t> assignStack;
        bool spillRegister = false;
        auto dynamicGraph = graph;
        dynamicGraph.prepareForAssign(weights, k);
        while(!dynamicGraph.empty()) {
            auto u = dynamicGraph.pickToAssign(k);
            if(u == invalidReg) {
                spillRegister = true;
                break;
            }
            if(debugRA)
                std::cerr << "push " << (u ^ virtualRegBegin) << std::endl;
            assignStack.push(u);
        }

        if(!spillRegister) {
            const auto calcCopyFreeProposal = [&](RegNum u, std::unordered_set<uint32_t>& exclude) -> std::optional<RegNum> {
                auto iter = copyHint.find(u);
                if(iter == copyHint.cend())
                    return std::nullopt;
                std::unordered_map<RegNum, double> map;
                for(auto [reg, v] : iter->second) {
                    if(isVirtualReg(reg)) {
                        if(auto it = regMap.find(reg); it != regMap.cend() && !exclude.count(it->second))
                            map[it->second] += v;
                    } else if(!exclude.count(reg))
                        map[reg] += v;
                }
                if(map.empty())
                    return std::nullopt;
                double maxWeight = -1e10;
                RegNum best = invalidReg;
                for(auto [reg, v] : map) {
                    if(v > maxWeight) {
                        maxWeight = v;
                        best = reg;
                    }
                }
                if(best == invalidReg)
                    reportUnreachable(CMMC_LOCATION());
                return best;
            };

            assert(assignStack.size() == vregs.size());
            while(!assignStack.empty()) {
                const auto u = assignStack.top();
                assignStack.pop();

                std::unordered_set<uint32_t> exclude;
                for(auto v : graph.adj(u)) {
                    if(isVirtualReg(v)) {
                        if(auto iter = regMap.find(v); iter != regMap.cend()) {
                            exclude.insert(iter->second);
                        }
                    } else {
                        exclude.insert(v);
                    }
                }

                bool assigned = false;
                if(auto isaReg = calcCopyFreeProposal(u, exclude)) {
                    assert(allocableISARegs.count(*isaReg));
                    regMap[u] = *isaReg;
                    colorDefUse(u, *isaReg);
                    assigned = true;
                } else {
                    if(!fixHazard) {
                        for(auto reg : list) {
                            if(!exclude.count(reg)) {
                                regMap[u] = reg;
                                assigned = true;
                                break;
                            }
                        }
                    } else {
                        RegNum bestReg = invalidReg;
                        double cost = 1e20;
                        auto evalCost = [&](RegNum reg) {
                            assert(isISAReg(reg));
                            constexpr double calleeSavedCost = 5.0;

                            double maxFreq = -1.0;
                            constexpr InstNum infDist = 10;
                            InstNum minDist = infDist;

                            auto& defTimeOfColored = defUseTime[reg];
                            auto evalDist = [&](InstNum curDefTime) {
                                if(defTimeOfColored.empty())
                                    return infDist;
                                const auto it = defTimeOfColored.lower_bound(curDefTime);
                                if(it == defTimeOfColored.begin())
                                    return std::min(infDist, *it - curDefTime);
                                if(it == defTimeOfColored.end())
                                    return std::min(infDist, curDefTime - *std::prev(it));
                                return std::min(infDist, std::min(curDefTime - *std::prev(it), *it - curDefTime));
                            };

                            for(auto instNum : defUseTime[u]) {
                                const auto f = getBlockFreq(instNum);
                                if(f > maxFreq) {
                                    minDist = evalDist(instNum);
                                    maxFreq = f;
                                } else if(f == maxFreq)
                                    minDist = std::min(minDist, evalDist(instNum));
                            }

                            double curCost = -static_cast<double>(minDist);
                            if(ctx.frameInfo.isCalleeSaved(MIROperand::asISAReg(reg, OperandType::Special))) {
                                curCost += calleeSavedCost;
                            }

                            return curCost;
                        };
                        for(auto reg : list) {
                            if(!exclude.count(reg)) {
                                const auto curCost = evalCost(reg);
                                if(debugRA) {
                                    std::cerr << reg << " cost " << curCost << std::endl;
                                }
                                if(curCost < cost) {
                                    cost = curCost;
                                    bestReg = reg;
                                }
                            }
                        }

                        regMap[u] = bestReg;
                        colorDefUse(u, bestReg);
                        assigned = true;
                    }
                }
                if(!assigned)
                    reportUnreachable(CMMC_LOCATION());
                if(debugRA) {
                    std::cerr << (u ^ virtualRegBegin) << " -> " << regMap.at(u) << std::endl;
                }
            }

            // mfunc.dump(std::cerr, ctx);
            return;
        }

        // Spill register
        auto u = graph.pickToSpill(blockList, weights, k);
        blockList.insert(u);
        if(debugRA) {
            std::cerr << "spill " << (u ^ virtualRegBegin) << std::endl;
            std::cerr << "block list " << blockList.size() << ' ' << graph.size() << '\n';
        }
        if(!isVirtualReg(u)) {
            // std::cerr << mfunc.symbol() << std::endl;
            reportUnreachable(CMMC_LOCATION());
        }
        const auto size = getOperandSize(canonicalizedType);
        bool alreadyInStack = inStackArguments.count(u);
        bool rematerializeConstant = constants.count(u);
        MIROperand stackStorage;
        MIRInst* copyInst = nullptr;
        if(alreadyInStack) {
            stackStorage = inStackArguments.at(u);
        } else if(rematerializeConstant) {
            copyInst = constants.at(u);
        } else {
            stackStorage = mfunc.addStackObject(ctx, size, size, 0, StackObjectUsage::RegSpill);
        }

        std::unordered_set<MIRInst*> newInsts;
        const uint32_t minimizeIntervalThreshold = 8;
        const auto fallback = blockList.size() >= minimizeIntervalThreshold;

        for(auto& block : mfunc.blocks()) {
            auto& instructions = block->instructions();

            bool loaded = false;
            for(auto iter = instructions.begin(); iter != instructions.end();) {
                const auto next = std::next(iter);
                auto& inst = *iter;
                if(newInsts.count(&inst)) {
                    iter = next;
                    continue;
                }
                auto& instInfo = ctx.instInfo.getInstInfo(inst);
                bool hasUse = false, hasDef = false;
                for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                    auto& op = inst.getOperand(idx);
                    if(!isOperandVReg(op))
                        continue;
                    if(op.reg() != u)
                        continue;

                    const auto flag = instInfo.getOperandFlag(idx);
                    if(flag & OperandFlagUse) {
                        hasUse = true;
                    } else if(flag & OperandFlagDef) {
                        hasDef = true;
                    }
                }

                if(hasUse && !loaded) {
                    // should be placed before locked inst block
                    auto it = iter;
                    while(it != instructions.begin()) {
                        auto& lockedInst = *std::prev(it);
                        auto& lockedInstInfo = ctx.instInfo.getInstInfo(lockedInst);
                        bool hasReg = false;
                        for(uint32_t idx = 0; idx < lockedInstInfo.getOperandNum(); ++idx) {
                            const auto& op = lockedInst.getOperand(idx);
                            if(isOperandISAReg(op) && !ctx.registerInfo->isZeroRegister(op.reg()) &&
                               isLockedOrUnderRenamedType(op.type()) && (instInfo.getOperandFlag(idx) & OperandFlagDef)) {
                                hasReg = true;
                                break;
                            }
                        }
                        if(!hasReg)
                            break;
                        --it;
                    }

                    if(rematerializeConstant) {
                        // auto& copyInstInfo = ctx.instInfo.getInstInfo(*copyInst);
                        // copyInstInfo.print(std::cerr, *copyInst, true);
                        // std::cerr << '\n';

                        instructions.insert(it, *copyInst);
                    } else
                        instructions.insert(it,
                                            MIRInst{ InstLoadRegFromStack }
                                                .setOperand<0>(MIROperand::asVReg(u - virtualRegBegin, canonicalizedType))
                                                .setOperand<1>(stackStorage));
                    if(!fallback)
                        loaded = true;
                }
                if(hasDef) {
                    if(alreadyInStack || rematerializeConstant) {
                        instructions.erase(iter);
                        loaded = false;
                    } else {
                        // should be placed after rename inst block
                        auto it = next;
                        while(it != instructions.end()) {
                            auto& renameInst = *it;
                            auto& renameInstInfo = ctx.instInfo.getInstInfo(renameInst);
                            bool hasReg = false;
                            for(uint32_t idx = 0; idx < renameInstInfo.getOperandNum(); ++idx) {
                                const auto& op = renameInst.getOperand(idx);
                                if(isOperandISAReg(op) && !ctx.registerInfo->isZeroRegister(op.reg()) &&
                                   isLockedOrUnderRenamedType(op.type()) && (instInfo.getOperandFlag(idx) & OperandFlagUse)) {
                                    hasReg = true;
                                    break;
                                }
                            }
                            if(!hasReg)
                                break;
                            ++it;
                        }
                        auto newInst =
                            instructions.insert(it,
                                                MIRInst{ InstStoreRegToStack }
                                                    .setOperand<0>(MIROperand::asVReg(u - virtualRegBegin, canonicalizedType))
                                                    .setOperand<1>(stackStorage));
                        newInsts.insert(&*newInst);
                        loaded = false;
                    }
                }

                iter = next;
            }

            // TODO: update live interval instead of recomputation?
        }

        cleanupRegFlags(mfunc, ctx);
    }
}

static void graphColoringAllocate(MIRFunction& mfunc, CodeGenContext& ctx, IPRAUsageCache& infoIPRA) {
    const auto classCount = ctx.registerInfo->getAllocationClassCount();
    std::unordered_map<uint32_t, uint32_t> regMap;
    for(uint32_t idx = 0; idx < classCount; ++idx)
        graphColoringAllocateImpl(mfunc, ctx, infoIPRA, idx, regMap);
    for(auto& block : mfunc.blocks()) {
        auto& instructions = block->instructions();
        for(auto& inst : instructions) {
            auto& instInfo = ctx.instInfo.getInstInfo(inst);
            for(uint32_t idx = 0; idx < instInfo.getOperandNum(); ++idx) {
                auto& op = inst.getOperand(idx);
                if(op.type() > OperandType::Float32)
                    continue;
                if(isOperandVReg(op)) {
                    const auto isaReg = regMap.at(op.reg());
                    op = MIROperand::asISAReg(isaReg, op.type());
                }
            }
        }
    }
}

CMMC_REGISTER_ALLOCATOR("graph-coloring", graphColoringAllocate);

CMMC_MIR_NAMESPACE_END
