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

#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cstdint>
#include <iterator>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN
class Reassociate final : public TransformPass<Function> {
    bool runOnBlock(Block& block) const {
        std::unordered_map<Value*, std::vector<std::pair<uint32_t, Value*>>> map;

        const auto ret = reduceBlock(block, [&](Instruction* inst, IRBuilder& builder, ReplaceMap&) -> Value* {
            switch(inst->getInstID()) {
                case InstructionID::Add:
                    [[fallthrough]];
                case InstructionID::Mul:
                    [[fallthrough]];
                case InstructionID::Or:
                    [[fallthrough]];
                case InstructionID::Xor:
                    [[fallthrough]];
                case InstructionID::And:
                    break;
                default:
                    return nullptr;
            }

            // gather operands
            auto& args = map[inst];
            for(auto operand : inst->operands()) {
                if(operand->isInstruction() && operand->as<Instruction>()->getInstID() == inst->getInstID()) {
                    auto& sub = map.at(operand);
                    if(sub.size() < 512U) {
                        args.insert(args.cend(), sub.cbegin(), sub.cend());
                        continue;
                    }
                }
                args.push_back({ 1U, operand });
            }

            std::sort(args.begin(), args.end(),
                      [](const std::pair<uint32_t, Value*>& lhs, const std::pair<uint32_t, Value*>& rhs) {
                          const auto lv = lhs.second;
                          const auto rv = rhs.second;
                          if(lv->isConstant() != rv->isConstant())
                              return lv->isConstant();
                          return lv < rv;
                      });

            auto last = args.begin();
            for(auto iter = std::next(args.begin()); iter != args.end(); ++iter) {
                if(iter->second == last->second) {
                    last->first += iter->first;
                } else {
                    last = std::next(last);
                    *last = *iter;
                }
            }
            args.erase(std::next(last), args.end());

            Value* reduction = nullptr;
            const auto reduce = [&](Value* val) {
                if(reduction) {
                    reduction = builder.makeOp<BinaryInst>(inst->getInstID(), inst->getType(), reduction, val);
                } else
                    reduction = val;
            };

            const auto pow = [&](Value* val, uint32_t c) {
                while(c) {
                    if(c & 1)
                        reduce(val);
                    c >>= 1;
                    val = builder.makeOp<BinaryInst>(InstructionID::Mul, inst->getType(), val, val);
                }
            };

            switch(inst->getInstID()) {
                case InstructionID::Add: {
                    for(auto [c, v] : args) {
                        if(c == 1)
                            reduce(v);
                        else {
                            reduce(builder.makeOp<BinaryInst>(InstructionID::Mul, inst->getType(), v,
                                                              ConstantInteger::get(inst->getType(), static_cast<intmax_t>(c))));
                        }
                    }
                } break;
                case InstructionID::Mul: {
                    for(auto [c, v] : args) {
                        if(c == 1) {
                            reduce(v);
                        } else {
                            pow(v, c);
                        }
                    }
                } break;
                case InstructionID::Or:
                case InstructionID::And: {
                    for(auto [c, v] : args) {
                        CMMC_UNUSED(c);
                        reduce(v);
                    }
                } break;
                case InstructionID::Xor: {
                    for(auto& [c, v] : args) {
                        CMMC_UNUSED(v);
                        if(c % 2)
                            reduce(v);
                    }
                    if(reduction == nullptr)
                        reduction = ConstantInteger::get(inst->getType(), 0);
                } break;
                default:
                    reportUnreachable();
            }
            assert(reduction);

            return reduction;
        });
        return ret;
    }

public:
    bool run(Function& func, AnalysisPassManager&) const override {
        bool modified = false;
        for(auto block : func.blocks()) {
            modified |= runOnBlock(*block);
        }
        return modified;
    }

    std::string_view name() const noexcept override {
        return "Reassociate"sv;
    }
};

CMMC_TRANSFORM_PASS(Reassociate);

CMMC_NAMESPACE_END