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

// a * b + a * c -> a * (b + c)
// a - a -> 0
// a == a -> 1
// etc.

#include "cmmc/IR/Type.hpp"
#include <cmmc/Analysis/AnalysisPass.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cmmc/Transforms/Util/BlockUtil.hpp>
#include <cmmc/Transforms/Util/PatternMatch.hpp>
#include <cstdint>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

// TODO: fuse sext/zext/trunc

class ArithmeticReduce final : public TransformPass<Function> {
    bool runOnBlock(Block& block) const {
        bool modified = false;
        const auto ret = reduceBlock(block, [&](Instruction* inst, IRBuilder& builder, ReplaceMap& replace) -> Value* {
            MatchContext<Value> matchCtx{ inst, &replace };

            auto makeInt = [inst](intmax_t val) { return make<ConstantInteger>(inst->getType(), val); };

            Value *v1, *v2, *v3, *v4;
            // a + 0 -> a
            if(add(any(v1), cint_(0))(matchCtx))
                return v1;
            if(fadd(any(v1), cfp_(0.0))(matchCtx))
                return v1;
            // a - 0 -> a
            if(sub(any(v1), cint_(0))(matchCtx))
                return v1;
            if(fsub(any(v1), cfp_(0.0))(matchCtx))
                return v1;
            // 0 - a -> -a
            if(sub(cint_(0), any(v1))(matchCtx))
                return builder.makeOp<UnaryInst>(InstructionID::Neg, v1->getType(), v1);
            if(fsub(cfp_(0.0), any(v1))(matchCtx))
                return builder.makeOp<UnaryInst>(InstructionID::FNeg, v1->getType(), v1);
            // a - a -> 0
            if(sub(any(v1), any(v2))(matchCtx) && v1 == v2)
                return makeInt(0);
            if(fsub(any(v1), any(v2))(matchCtx) && v1 == v2)
                return make<ConstantFloatingPoint>(inst->getType(), 0.0);
            // a * 0 -> 0
            if(mul(any(v1), cint_(0))(matchCtx))
                return makeInt(0);
            if(fmul(any(v1), cfp_(0.0))(matchCtx))
                return make<ConstantFloatingPoint>(inst->getType(), 0.0);
            // a * 1 -> a
            if(mul(any(v1), cint_(1))(matchCtx))
                return v1;
            if(fmul(any(v1), cfp_(1.0))(matchCtx))
                return v1;
            // a * -1 -> -a
            if(mul(any(v1), cint_(-1))(matchCtx))
                return builder.makeOp<UnaryInst>(InstructionID::Neg, v1->getType(), v1);
            if(fmul(any(v1), cfp_(-1.0))(matchCtx))
                return builder.makeOp<UnaryInst>(InstructionID::FNeg, v1->getType(), v1);
            // 0 / a -> 0
            if(sdiv(cint_(0), any(v1))(matchCtx) || udiv(cuint_(0), any(v1))(matchCtx))
                return makeInt(0);
            if(fdiv(cfp_(0.0), any(v1))(matchCtx))
                return make<ConstantFloatingPoint>(inst->getType(), 0.0);
            // a / a -> 1
            if((sdiv(any(v1), any(v2))(matchCtx) || udiv(any(v1), any(v2))(matchCtx)) && v1 == v2)
                return make<ConstantInteger>(inst->getType(), 1);
            if(fdiv(any(v1), any(v2))(matchCtx) && v1 == v2)
                return make<ConstantFloatingPoint>(inst->getType(), 1.0);
            // a / 1 -> a
            if(sdiv(any(v1), cint_(1))(matchCtx) || udiv(any(v1), cuint_(1))(matchCtx))
                return v1;
            if(fdiv(any(v1), cfp_(1.0))(matchCtx))
                return v1;
            // a / -1 -> -a
            if(sdiv(any(v1), cint_(-1))(matchCtx))
                return builder.makeOp<UnaryInst>(InstructionID::Neg, v1->getType(), v1);
            if(fdiv(any(v1), cfp_(1.0))(matchCtx))
                return builder.makeOp<UnaryInst>(InstructionID::FNeg, v1->getType(), v1);
            // a / -a -> -1
            if(sdiv(any(v1), neg(any(v2)))(matchCtx) && v1 == v2)
                return makeInt(-1);
            if(fdiv(any(v1), neg(any(v2)))(matchCtx) && v1 == v2)
                return make<ConstantFloatingPoint>(inst->getType(), -1.0);
            // 0 % a -> 0
            if(srem(cint_(0), any(v1))(matchCtx) || urem(cuint_(0), any(v1))(matchCtx))
                return makeInt(0);
            // a % a -> 0
            if((srem(any(v1), any(v2))(matchCtx) || urem(any(v1), any(v2))(matchCtx)) && v1 == v2)
                return makeInt(0);
            // a % 1 -> 0
            if(srem(any(v1), cint_(1))(matchCtx) || urem(any(v1), cuint_(1))(matchCtx))
                return makeInt(0);
            // For floating point, fma(a, c, b * c) may be better
            // a ^ a -> 0
            if(xor_(any(v1), any(v2))(matchCtx) && v1 == v2)
                return makeInt(0);
            // a ^ 0 -> a
            if(xor_(any(v1), cuint_(0))(matchCtx))
                return v1;
            // a & a -> a
            if(and_(any(v1), any(v2))(matchCtx) && v1 == v2)
                return v1;
            // a | a -> a
            if(or_(any(v1), any(v2))(matchCtx) && v1 == v2)
                return v1;
            CompareOp cmp;
            // uint >= 0 -> true
            // uint < 0 -> false
            if(ucmp(cmp, any(v1), cuint_(0))(matchCtx)) {
                switch(cmp) {
                    case CompareOp::GreaterEqual:
                        return makeInt(1);
                    case CompareOp::LessThan:
                        return makeInt(0);
                    default:
                        break;
                }
            }
            // !!a -> a
            if(not_(not_(any(v1)))(matchCtx))
                return v1;
            // a + -b -> a - b
            if(add(any(v1), neg(any(v2)))(matchCtx)) {
                return builder.makeOp<BinaryInst>(InstructionID::Sub, inst->getType(), v1, v2);
            }
            // a - -b -> a + b
            if(sub(any(v1), neg(any(v2)))(matchCtx)) {
                return builder.makeOp<BinaryInst>(InstructionID::Add, inst->getType(), v1, v2);
            }
            // select c?a:a -> a
            if(select(any(v1), any(v2), any(v3))(matchCtx) && v2 == v3) {
                return v2;
            }
            uintmax_t u1;
            if(select(uint_(u1), any(v2), any(v3))(matchCtx)) {
                return u1 ? v2 : v3;
            }
            // a + a -> 2 * a
            if(add(any(v1), any(v2))(matchCtx) && v1 == v2)
                return builder.makeOp<BinaryInst>(InstructionID::Mul, inst->getType(), makeInt(2), v1);
            // b * a + a -> (b+1) * a
            if(add(mul(any(v1), any(v2)), any(v3))(matchCtx)) {
                Value *a = nullptr, *b = nullptr;
                if(v1 == v3) {
                    a = v1, b = v2;
                } else if(v2 == v3) {
                    a = v2, b = v1;
                }
                if(a && b)
                    return builder.makeOp<BinaryInst>(
                        InstructionID::Mul, inst->getType(),
                        builder.makeOp<BinaryInst>(InstructionID::Add, inst->getType(), b, makeInt(1)), a);
            }
            // b * a + c * a -> (b + c) * a
            if(add(mul(any(v1), any(v2)), mul(any(v3), any(v4)))(matchCtx)) {
                Value *a = nullptr, *b = nullptr, *c = nullptr;
                if(v1 == v3) {
                    a = v1, b = v2, c = v4;
                } else if(v1 == v4) {
                    a = v1, b = v2, c = v3;
                } else if(v2 == v3) {
                    a = v2, b = v1, c = v4;
                } else if(v2 == v4) {
                    a = v2, b = v1, c = v3;
                }
                if(a && b && c)
                    return builder.makeOp<BinaryInst>(InstructionID::Mul, inst->getType(),
                                                      builder.makeOp<BinaryInst>(InstructionID::Add, inst->getType(), b, c), a);
            }

            // c % (2^k) = c & (2^k - 1)
            uintmax_t c;
            if(urem(any(v1), uint_(c))(matchCtx) && c && (c == (c & (-c)))) {
                return builder.makeOp<BinaryInst>(InstructionID::And, inst->getType(), v1, makeInt(static_cast<intmax_t>(c - 1)));
            }

            // (zext i1 a) != 0 -> a
            if(scmp(cmp, zext(any(v1)), cint_(0))(matchCtx) && cmp == CompareOp::NotEqual && v1->getType()->isBoolean()) {
                return v1;
            }

            // select x 1 0 -> zext x
            if(select(any(v1), cint_(1), cint_(0))(matchCtx)) {
                if(inst->getType()->isBoolean()) {
                    return v1;
                } else {
                    return builder.makeOp<CastInst>(InstructionID::ZExt, inst->getType(), v1);
                }
            }

            // gep x 0 -> x
            if(inst->getInstID() == InstructionID::GetElementPtr && inst->operands().size() == 2 &&
               cuint_(0)(MatchContext<Value>{ inst->getOperand(0), &replace })) {
                return inst->operands().back();
            }

            // TODO: reassociate
            intmax_t i1, i2;
            // add (add x c1) c2 -> add x c1+c2
            if(add(add(any(v1), int_(i1)), int_(i2))(matchCtx))
                return builder.makeOp<BinaryInst>(InstructionID::Add, inst->getType(), v1, makeInt(i1 + i2));
            // add (sub x c1) c2 -> add x c2-c1
            if(add(sub(any(v1), int_(i1)), int_(i2))(matchCtx))
                return builder.makeOp<BinaryInst>(InstructionID::Add, inst->getType(), v1, makeInt(i2 - i1));
            // sub (sub x c1) c2 -> add x -c1-c2
            if(sub(sub(any(v1), int_(i1)), int_(i2))(matchCtx))
                return builder.makeOp<BinaryInst>(InstructionID::Add, inst->getType(), v1, makeInt(-(i1 + i2)));
            // sub (add x c1) c2 -> add x c1-c2
            if(sub(add(any(v1), int_(i1)), int_(i2))(matchCtx))
                return builder.makeOp<BinaryInst>(InstructionID::Add, inst->getType(), v1, makeInt(i1 - i2));

            // add c x -> add x c
            if(inst->getInstID() == InstructionID::Add && inst->getOperand(0)->isConstant() &&
               !inst->getOperand(1)->isConstant()) {
                auto& operands = inst->operands();
                std::swap(operands[0], operands[1]);
                modified = true;
            }

            return nullptr;
        });
        return ret || modified;
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
        using namespace std::string_view_literals;
        return "ArithmeticReduce"sv;
    }
};

CMMC_TRANSFORM_PASS(ArithmeticReduce);

CMMC_NAMESPACE_END
