/*
    SPDX-License-Identifier: Apache-2.0
    Copyright 2022 Yingwei Zheng and Bingzhen Wang
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

// TODO: use MinimizeStackObjectLifetime instead of FreeEliminate
// eliminate useless lifetime annotation of stack allocations
// NOTICE: Using by free is a weak reference

#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <unordered_set>

CMMC_NAMESPACE_BEGIN

/*
class FreeEliminate final : public TransformPass<Function> {
    bool isUsed(Value* alloc, Block* block, std::unordered_set<Value*>& visited) const {
        if(visited.count(alloc))
            return false;

        for(auto inst : block->instructions()) {
            if(inst != block->getTerminator()) {
                if(inst->getInstID() == InstructionID::Free && inst->getOperand(0) == alloc)
                    return false;
                if(inst->hasOperand(alloc))
                    return true;
            } else if(inst->isBranch()) {
                auto handleTarget = [&](const BranchTarget& target) {
                    if(!target.getTarget())
                        return false;
                    visited.insert(alloc);
                    auto& args1 = target.getArgs();
                    auto& args2 = target.getTarget()->args();
                    bool ret = false;
                    for(size_t idx = 0; idx < args1.size(); ++idx) {
                        if(args1[idx] == alloc) {
                            if(isUsed(args2[idx], target.getTarget(), visited)) {
                                ret = true;
                                break;
                            }
                        }
                    }
                    visited.erase(alloc);
                    return ret;
                };

                const auto& branch = inst->as<BranchInst>();
                const auto& trueTarget = branch->getTrueTarget();
                const auto& falseTarget = branch->getFalseTarget();
                return handleTarget(trueTarget) || handleTarget(falseTarget);
            }
        }
        return false;
    }

public:
    bool run(Function& func, AnalysisPassManager& analysis) const override {
        constexpr uint32_t strongThreshold = 8U;
        const auto strongCheck = func.blocks().size() <= strongThreshold;

        std::unordered_set<Value*> removeList;
        for(auto block : func.blocks()) {
            for(auto inst : block->instructions()) {
                if(inst->getInstID() == InstructionID::Free) {
                    const auto ptr = blockArgMap.queryRoot(inst->getOperand(0));
                    if(auto alloc = dynamic_cast<StackAllocInst*>(ptr)) {
                        std::unordered_set<Value*> visited;
                        if(!strongCheck || !isUsed(alloc, alloc->getBlock(), visited)) {
                            removeList.insert(inst);
                        }
                    }
                }
            }
        }

        if(!strongCheck) {
            // weaker strategy: only counts explicit uses for performance
            for(auto block : func.blocks()) {
                for(auto inst : block->instructions()) {
                    if(inst->isTerminator() || inst->getInstID() == InstructionID::Free)
                        continue;
                    for(auto operand : inst->operands()) {
                        if(operand->getType()->isPointer()) {
                            const auto base = blockArgMap.queryRoot(operand);
                            removeList.erase(base);
                        }
                    }
                }

                if(removeList.empty())
                    return false;
            }
        }

        if(removeList.empty())
            return false;

        for(auto block : func.blocks())
            block->instructions().remove_if([&](Instruction* inst) { return removeList.count(inst); });
        return true;
    }

    [[nodiscard]] std::string_view name() const noexcept override {
        return "FreeEliminate"sv;
    }
};

CMMC_TRANSFORM_PASS(FreeEliminate);
*/

CMMC_NAMESPACE_END
