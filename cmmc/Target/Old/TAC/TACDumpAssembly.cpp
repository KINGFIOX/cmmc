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
#include <cmmc/CodeGen/DataLayout.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Dispatch.hpp>
#include <cmmc/Support/LabelAllocator.hpp>
#include <cmmc/Support/StaticReflection.hpp>
#include <cmmc/Target/TAC/TACTarget.hpp>
#include <iostream>
#include <unordered_map>
#include <variant>

CMMC_NAMESPACE_BEGIN

static std::string_view getCompareOp(CompareOp compare) {
    switch(compare) {
        case CompareOp::Equal:
            return "==";
        case CompareOp::NotEqual:
            return "!=";
        case CompareOp::LessThan:
            return "<";
        case CompareOp::LessEqual:
            return "<=";
        case CompareOp::GreaterThan:
            return ">";
        case CompareOp::GreaterEqual:
            return ">=";
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

struct FunctionNameMap final {
    std::unordered_map<const MIRBasicBlock*, String> labelMap;
    std::unordered_map<uint32_t, uint32_t> gprMap, stackMap;
};

static void emitFunc(std::ostream& out, const String& symbol, const MIRFunction& func, const DataLayout& dataLayout,
                     const FunctionNameMap& map) {
    out << "FUNCTION "sv << symbol << " :\n"sv;

    {
        auto& params = func.parameters();
        for(auto param : params) {
            out << "PARAM v"sv << map.gprMap.at(param.id) << '\n';
        }
    }

    const auto printOperand = [&](const MIROperand& operand, bool foldStack) {
        if(operand.addressSpace == TACAddressSpace::GPR)
            out << 'v' << map.gprMap.at(operand.id);
        else if(operand.addressSpace == TACAddressSpace::Stack) {
            out << (foldStack ? "x"sv : "&x"sv) << map.stackMap.at(operand.id);
        } else if(operand.addressSpace == TACAddressSpace::Constant) {
            out << '#';
            const auto metadata = static_cast<ConstantValue*>(func.pools().pools[TACAddressSpace::Constant].getMetadata(operand));
            if(metadata->isUndefined())
                out << '0';
            else
                out << metadata->as<ConstantInteger>()->getSignExtended();
        }
    };

    {
        const auto& allocas = func.pools().pools[TACAddressSpace::Stack].storage();
        for(uint32_t idx = 0; idx < allocas.size(); ++idx) {
            const auto alloc = allocas[idx];
            out << "DEC x"sv << map.stackMap.at(idx) << ' ' << alloc.first->getSize(dataLayout) << '\n';
        }
    }

    for(auto& block : func.blocks()) {
        if(&block != &func.blocks().front()) {
            const auto& label = map.labelMap.at(block.get());
            out << "LABEL "sv << label << " :\n"sv;
        }

        for(auto& inst : block->instructions()) {
            std::visit(Overload{ [&](const CopyMInst& copy) {
                                    auto valid = [&] {
                                        if(!copy.indirectSrc) {
                                            // copy or fetch
                                            return true;
                                        }
                                        if(!copy.indirectDst) {
                                            // deref
                                            return true;
                                        }
                                        return false;
                                    };
                                    if(valid()) {
                                        if(copy.indirectDst && copy.dst.addressSpace != TACAddressSpace::Stack)
                                            out << '*';
                                        printOperand(copy.dst, copy.indirectDst);
                                        out << " := "sv;

                                        if(copy.indirectSrc && copy.src.addressSpace != TACAddressSpace::Stack)
                                            out << '*';
                                        printOperand(copy.src, copy.indirectSrc);
                                    } else
                                        reportUnreachable(CMMC_LOCATION());
                                },
                                 [&](const ConstantMInst& constant) {
                                     assert(constant.dst.addressSpace != TACAddressSpace::Stack);
                                     printOperand(constant.dst, false);
                                     out << " := #"sv << std::get<intmax_t>(constant.constant);
                                 },
                                 [&](const UnaryArithmeticMInst& unary) {
                                     if(unary.instID == GMIRInstID::Neg) {
                                         printOperand(unary.dst, false);
                                         out << " := #0 - "sv;
                                         printOperand(unary.src, false);
                                     } else
                                         reportUnreachable(CMMC_LOCATION());
                                 },
                                 [&](const BinaryArithmeticMInst& binary) {
                                     char op;
                                     switch(binary.instID) {
                                         case GMIRInstID::Add:
                                             op = '+';
                                             break;
                                         case GMIRInstID::Sub:
                                             op = '-';
                                             break;
                                         case GMIRInstID::Mul:
                                             op = '*';
                                             break;
                                         case GMIRInstID::SDiv:
                                             op = '/';
                                             break;
                                         default:
                                             reportUnreachable(CMMC_LOCATION());
                                     }

                                     printOperand(binary.dst, false);
                                     out << " := "sv;
                                     printOperand(binary.lhs, false);
                                     out << ' ' << op << ' ';
                                     printOperand(binary.rhs, false);
                                 },
                                 [&](const BranchMInst& branch) { out << "GOTO "sv << map.labelMap.at(branch.targetBlock); },
                                 [&](const BranchCompareMInst& branch) {
                                     out << "IF "sv;
                                     printOperand(branch.lhs, false);
                                     out << ' ' << getCompareOp(branch.compareOp) << ' ';
                                     printOperand(branch.rhs, false);
                                     out << " GOTO "sv;
                                     out << map.labelMap.at(branch.targetBlock);
                                 },
                                 [&](const CallMInst& call) {
                                     printOperand(call.dst, false);
                                     out << " := CALL "sv;
                                     out << std::get<MIRRelocable*>(call.callee)->symbol;
                                 },
                                 [&](const RetMInst& ret) {
                                     out << "RETURN "sv;
                                     printOperand(ret.retVal, false);
                                 },
                                 [&](const UnreachableMInst&) { out << "RETURN #0"sv; },
                                 [&](const ControlFlowIntrinsicMInst& intrinsic) {
                                     const auto id = static_cast<TACIntrinsic>(intrinsic.intrinsicID);
                                     if(id == TACIntrinsic::PushArg) {
                                         out << "ARG "sv;
                                         printOperand(intrinsic.src, false);
                                     } else if(id == TACIntrinsic::Read) {
                                         out << "READ "sv;
                                         printOperand(intrinsic.dst, false);
                                     } else if(id == TACIntrinsic::Write) {
                                         out << "WRITE "sv;
                                         printOperand(intrinsic.src, false);
                                     } else
                                         reportUnreachable(CMMC_LOCATION());
                                 },
                                 [](const auto&) { reportUnreachable(CMMC_LOCATION()); } },
                       inst);

            out << '\n';
        }
    }
    out << '\n';
}

void TACTarget::emitAssembly(const MIRModule& module, std::ostream& out) const {
    using namespace std::string_literals;

    std::unordered_map<const MIRFunction*, FunctionNameMap> funcMap;

    {
        LabelAllocator allocator;
        const auto tryAllocate = [](std::unordered_map<uint32_t, uint32_t>& map, uint32_t id, uint32_t& count) {
            if(!map.count(id))
                map.emplace(id, count++);
        };
        uint32_t gprAllocateID = 0, stackAllocateID = 0;
        String labelBase = String::get("label"sv);
        for(auto& symbol : module.symbols) {
            std::visit(Overload{ [&](const MIRFunction& func) {
                                    auto& ref = funcMap[&func];
                                    {
                                        auto& labelMap = ref.labelMap;
                                        for(auto& block : func.blocks()) {
                                            const auto label = allocator.allocate(labelBase);

                                            // entry block cannot be branch target
                                            if(&block == &func.blocks().front())
                                                continue;

                                            labelMap[block.get()] = label;
                                        }
                                    }

                                    {
                                        const auto& allocas = func.pools().pools[TACAddressSpace::Stack].storage();
                                        for(uint32_t idx = 0; idx < allocas.size(); ++idx) {
                                            tryAllocate(ref.stackMap, idx, stackAllocateID);
                                        }
                                    }

                                    // NOLINTNEXTLINE
                                    forEachOperands(const_cast<MIRFunction&>(func), [&](const MIROperand& operand) {
                                        if(operand.addressSpace == TACAddressSpace::GPR) {
                                            tryAllocate(ref.gprMap, operand.id, gprAllocateID);
                                        }
                                    });
                                },
                                 [](const std::monostate&) {}, [](const auto&) { reportUnreachable(CMMC_LOCATION()); } },
                       symbol.def);
        }
    }

    const auto& dataLayout = module.target.getDataLayout();

    for(auto& symbol : module.symbols) {
        std::visit(Overload{ [&](const MIRFunction& func) {
                                // func.dump(std::cerr, *this);
                                emitFunc(out, symbol.symbol, func, dataLayout, funcMap.at(&func));
                            },
                             [](const auto&) { reportUnreachable(CMMC_LOCATION()); }, [](const std::monostate&) {} },
                   symbol.def);
    }
}

CMMC_NAMESPACE_END