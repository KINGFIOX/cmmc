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

#include <cmmc/Frontend/AST.hpp>
#include <cmmc/Frontend/EmitIR.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Function.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>
#include <cmmc/Transforms/Util/FunctionUtil.hpp>
#include <iostream>

CMMC_NAMESPACE_BEGIN

extern Flag strictMode;

FunctionType* FunctionDeclaration::getSignature(EmitContext& ctx) const {
    const auto ret = ctx.getType(retType.typeIdentifier, retType.space, {});
    Vector<Type*> argTypes;
    for(auto& arg : args)
        argTypes.push_back(ctx.getType(arg.type.typeIdentifier, arg.type.space, {}));  // TODO: pass array base pointer

    return make<FunctionType>(ret, std::move(argTypes));
}

void FunctionDefinition::emit(EmitContext& ctx) const {
    auto module = ctx.getModule();
    const auto funcType = decl.getSignature(ctx);
    auto func = make<Function>(StringIR{ decl.symbol }, funcType);
    module->add(func);
    ctx.addIdentifier(decl.symbol, func);

    ctx.setCurrentFunction(func);
    ctx.pushScope();  // arguments
    const auto entry = ctx.addBlock(funcType->getArgTypes());
    entry->setLabel("entry");
    ctx.setCurrentBlock(entry);
    // NOTICE: function arguments must be lvalues
    for(size_t idx = 0; idx < decl.args.size(); ++idx) {
        const auto& name = decl.args[idx].var.name;
        auto label = StringIR{ name };
        const auto arg = entry->getArg(idx);
        arg->setLabel(label);
        if(arg->getType()->isArray())
            reportNotImplemented();
        const auto memArg = ctx.makeOp<StackAllocInst>(arg->getType());
        memArg->setLabel(label);
        ctx.makeOp<StoreInst>(memArg, arg);
        ctx.addIdentifier(name, memArg);
    }
    for(auto st : block)
        st->emit(ctx);

    // trim instructions after the first terminator
    const auto retType = funcType->getRetType();
    for(auto funcBlock : func->blocks()) {
        auto& insts = funcBlock->instructions();
        bool hasTerminator = false;
        for(auto iter = insts.cbegin(); iter != insts.cend(); ++iter) {
            if((*iter)->isTerminator()) {
                ++iter;
                insts.erase(iter, insts.cend());
                hasTerminator = true;
                break;
            }
        }
        if(!hasTerminator) {
            // fix terminator
            ctx.setCurrentBlock(funcBlock);
            if(retType->isVoid()) {
                ctx.makeOp<ReturnInst>();
            } else {
                ctx.makeOp<UnreachableInst>();
            }
        }
    }

    blockArgPropagation(*func);
    // TODO: sort blocks

    ctx.popScope();
}

static InstructionID getBinaryOp(OperatorID op, bool isFloatingPoint) {
    if(isFloatingPoint) {
        switch(op) {
            case OperatorID::Add:
                return InstructionID::FAdd;
            case OperatorID::Sub:
                return InstructionID::FSub;
            case OperatorID::Mul:
                return InstructionID::FMul;
            case OperatorID::Div:
                return InstructionID::FDiv;

            case OperatorID::LessThan:
                [[fallthrough]];
            case OperatorID::LessEqual:
                [[fallthrough]];
            case OperatorID::GreaterThan:
                [[fallthrough]];
            case OperatorID::GreaterEqual:
                [[fallthrough]];
            case OperatorID::Equal:
                [[fallthrough]];
            case OperatorID::NotEqual:
                return InstructionID::FCmp;

            default:
                reportUnreachable();
        }
    } else {
        switch(op) {
            case OperatorID::Add:
                return InstructionID::Add;
            case OperatorID::Sub:
                return InstructionID::Sub;
            case OperatorID::Mul:
                return InstructionID::Mul;

                // TODO: unsigned
            case OperatorID::Div:
                return InstructionID::SDiv;
            case OperatorID::Rem:
                return InstructionID::SRem;

            case OperatorID::LessThan:
                [[fallthrough]];
            case OperatorID::LessEqual:
                [[fallthrough]];
            case OperatorID::GreaterThan:
                [[fallthrough]];
            case OperatorID::GreaterEqual:
                [[fallthrough]];
            case OperatorID::Equal:
                [[fallthrough]];
            case OperatorID::NotEqual:
                return InstructionID::SCmp;

            default:
                reportUnreachable();
        }
    }
}

static CompareOp getCompareOp(OperatorID op) {
    assert(static_cast<uint32_t>(op) >= static_cast<uint32_t>(OperatorID::LessThan) &&
           static_cast<uint32_t>(op) <= static_cast<uint32_t>(OperatorID::NotEqual));
    return static_cast<CompareOp>(static_cast<uint32_t>(op) - static_cast<uint32_t>(OperatorID::LessThan) +
                                  static_cast<uint32_t>(CompareOp::LessThan));
}

static Value* makeBinaryOp(EmitContext& ctx, OperatorID op, bool isFloatintPoint, Value* lhs, Value* rhs) {
    auto inst = getBinaryOp(op, isFloatintPoint);

    if(inst == InstructionID::FCmp || inst == InstructionID::SCmp || inst == InstructionID::UCmp) {
        return ctx.makeOp<CompareInst>(inst, getCompareOp(op), lhs, rhs);
    } else {
        return ctx.makeOp<BinaryInst>(inst, lhs->getType(), lhs, rhs);
    }
}

Value* BinaryExpr::emit(EmitContext& ctx) const {
    // assign op
    if(mOp == OperatorID::Assign) {
        auto lhs = ctx.getLValue(mLhs);
        auto rhs = ctx.getRValue(mRhs);
        rhs = ctx.convertTo(rhs, lhs->getType()->as<PointerType>()->getPointee());

        return ctx.makeOp<StoreInst>(lhs, rhs);
    }

    // short circut logical op
    auto lhs = ctx.getRValue(mLhs);
    if(mOp == OperatorID::LogicalAnd || mOp == OperatorID::LogicalOr) {
        lhs = ctx.convertTo(lhs, IntegerType::getBoolean());

        auto rhsBlock = ctx.addBlock();
        auto newBlock = ctx.addBlock(IntegerType::getBoolean());

        if(mOp == OperatorID::LogicalAnd) {
            ctx.makeOp<ConditionalBranchInst>(lhs, BranchTarget{ rhsBlock }, BranchTarget{ newBlock, ctx.getFalse() });
        } else {
            ctx.makeOp<ConditionalBranchInst>(lhs, BranchTarget{ newBlock, ctx.getTrue() }, BranchTarget{ rhsBlock });
        }

        ctx.setCurrentBlock(rhsBlock);
        ctx.makeOp<ConditionalBranchInst>(BranchTarget{ rhsBlock, ctx.convertTo(mRhs->emit(ctx), IntegerType::getBoolean()) });
        ctx.setCurrentBlock(newBlock);
        return newBlock->getArg(0);
    }

    // arithmetic op
    auto rhs = ctx.getRValue(mRhs);

    auto lt = lhs->getType();
    auto rt = rhs->getType();
    if(!lt->isPrimitive() || !rt->isPrimitive())
        reportFatal("Custom operator is not supported");

    assert(!lt->isPointer() && !rt->isPointer());

    switch(mOp) {
        // IOP/FOP
        case OperatorID::Add:
            [[fallthrough]];
        case OperatorID::Sub:
            [[fallthrough]];
        case OperatorID::Mul:
            [[fallthrough]];
        case OperatorID::Div:
            [[fallthrough]];
        case OperatorID::LessThan:
            [[fallthrough]];
        case OperatorID::LessEqual:
            [[fallthrough]];
        case OperatorID::GreaterThan:
            [[fallthrough]];
        case OperatorID::GreaterEqual:
            [[fallthrough]];
        case OperatorID::Equal:
            [[fallthrough]];
        case OperatorID::NotEqual: {
            Type* target = nullptr;
            if((lt->isInteger() && rt->isInteger()) || (lt->isFloatingPoint() || rt->isFloatingPoint())) {
                target = lt->getFixedSize() > rt->getFixedSize() ? lt : rt;
            } else {
                target = lt->isFloatingPoint() ? lt : rt;

                lhs = ctx.convertTo(lhs, target);
                rhs = ctx.convertTo(rhs, target);

                return makeBinaryOp(ctx, mOp, target->isFloatingPoint(), lhs, rhs);
            }
        }
        // IOP
        case OperatorID::Rem:
            [[fallthrough]];
        case OperatorID::BitwiseAnd:
            [[fallthrough]];
        case OperatorID::BitwiseOr:
            [[fallthrough]];
        case OperatorID::Xor: {
            if(lt->isFloatingPoint() || rt->isFloatingPoint())
                reportFatal("");

            const auto target = lt->getFixedSize() > rt->getFixedSize() ? lt : rt;
            lhs = ctx.convertTo(lhs, target);
            rhs = ctx.convertTo(rhs, target);
            return makeBinaryOp(ctx, mOp, false, lhs, rhs);
        }
        default:
            reportUnreachable();
    }
}

Value* UnaryExpr::emit(EmitContext& ctx) const {
    auto value = ctx.getRValue(mValue);

    switch(mOp) {
        case OperatorID::Neg: {
            if(value->getType()->isInteger())
                return ctx.makeOp<UnaryInst>(InstructionID::Neg, value->getType(), value);
            return ctx.makeOp<UnaryInst>(InstructionID::FNeg, value->getType(), value);
        }
        case OperatorID::BitwiseNot: {
            if(value->getType()->isInteger()) {
                return ctx.makeOp<BinaryInst>(InstructionID::Xor, value->getType(), value,
                                              make<ConstantInteger>(value->getType(), -1));
            }
            reportFatal("");
        }
        case OperatorID::LogicalNot: {
            value = ctx.convertTo(value, IntegerType::getBoolean());
            return ctx.makeOp<UnaryInst>(InstructionID::Not, value->getType(), value);
        }
        default:
            reportUnreachable();
    }
}

Value* ConstantIntExpr::emit(EmitContext& ctx) const {
    return make<ConstantInteger>(IntegerType::get(mBitWidth), static_cast<intmax_t>(mValue));
}

Value* ConstantFloatExpr::emit(EmitContext& ctx) const {
    return make<ConstantFloatingPoint>(FloatingPointType::get(mIsFloat), mValue);
}

Value* ConstantStringExpr::emit(EmitContext& ctx) const {
    reportNotImplemented();
    return nullptr;
}

Value* FunctionCallExpr::emit(EmitContext& ctx) const {
    auto callee = ctx.getRValue(mCallee);

    Vector<Value*> args;
    args.reserve(mArgs.size());
    for(auto arg : mArgs)
        args.push_back(ctx.getRValue(arg));

    // TODO: va_args
    auto& argTypes = callee->getType()->as<FunctionType>()->getArgTypes();
    if(argTypes.size() != args.size())
        reportFatal("");

    for(size_t idx = 0; idx < args.size(); ++idx)
        args[idx] = ctx.convertTo(args[idx], argTypes[idx]);

    return ctx.makeOp<FunctionCallInst>(callee, std::move(args));
}

Value* ReturnExpr::emit(EmitContext& ctx) const {
    auto func = ctx.getCurrentFunction();
    auto type = func->getType()->as<FunctionType>();
    auto retType = type->getRetType();
    if(retType->isVoid()) {
        if(mReturnValue)
            reportFatal("");
    } else if(!mReturnValue) {
        reportFatal("");
    }

    if(type->isVoid())
        return ctx.makeOp<ReturnInst>(nullptr);
    auto val = ctx.convertTo(ctx.getRValue(mReturnValue), retType);
    return ctx.makeOp<ReturnInst>(val);
}

Value* IfElseExpr::emit(EmitContext& ctx) const {
    const auto pred = ctx.convertTo(ctx.getRValue(mPredicate), IntegerType::getBoolean());

    const auto oldBlock = ctx.getCurrentBlock();

    const auto ifBlock = ctx.addBlock();
    ifBlock->setLabel("if.then");
    const auto newBlock = ctx.addBlock();

    ctx.setCurrentBlock(ifBlock);
    mThenBlock->emit(ctx);
    ctx.makeOp<ConditionalBranchInst>(BranchTarget{ newBlock });

    if(mElseBlock) {
        const auto elseBlock = ctx.addBlock();
        elseBlock->setLabel("if.else");

        ctx.setCurrentBlock(oldBlock);
        ctx.makeOp<ConditionalBranchInst>(pred, BranchTarget{ ifBlock }, BranchTarget{ elseBlock });

        ctx.setCurrentBlock(elseBlock);
        mElseBlock->emit(ctx);
        ctx.makeOp<ConditionalBranchInst>(BranchTarget{ newBlock });
    } else {
        ctx.setCurrentBlock(oldBlock);
        ctx.makeOp<ConditionalBranchInst>(pred, BranchTarget{ ifBlock }, BranchTarget{ newBlock });
    }

    ctx.setCurrentBlock(newBlock);
    return nullptr;
}

Value* IdentifierExpr::emit(EmitContext& ctx) const {
    auto value = ctx.lookupIdentifier(mIdentifier);
    if(!value) {
        value = ctx.makeOp<StackAllocInst>(IntegerType::get(32));
        ctx.addIdentifier(mIdentifier, value);
    }
    return value;
}

Value* ScopedExpr::emit(EmitContext& ctx) const {
    ctx.pushScope();
    for(auto statement : mBlock)
        statement->emit(ctx);
    ctx.popScope();
    return nullptr;
}

Value* WhileExpr::emit(EmitContext& ctx) const {
    auto whileHeader = ctx.addBlock();
    whileHeader->setLabel("while.header");
    ctx.makeOp<ConditionalBranchInst>(BranchTarget{ whileHeader });
    ctx.setCurrentBlock(whileHeader);

    auto val = ctx.convertTo(ctx.getRValue(mPredicate), IntegerType::getBoolean());

    auto whileBody = ctx.addBlock();
    whileBody->setLabel("while.body");
    auto newBlock = ctx.addBlock();

    ctx.makeOp<ConditionalBranchInst>(val, BranchTarget{ whileBody }, BranchTarget{ newBlock });

    ctx.setCurrentBlock(whileBody);
    mBlock->emit(ctx);
    ctx.makeOp<ConditionalBranchInst>(BranchTarget{ whileHeader });

    ctx.setCurrentBlock(newBlock);

    return nullptr;
}

Value* LocalVarDefExpr::emit(EmitContext& ctx) const {
    for(auto& [name, arraySize, initExpr] : mVars) {
        const auto type = ctx.getType(mType.typeIdentifier, mType.space, arraySize);
        auto local = ctx.makeOp<StackAllocInst>(type);
        local->setLabel(StringIR{ name });
        ctx.addIdentifier(name, local);
        if(initExpr)
            ctx.makeOp<StoreInst>(local, ctx.getRValue(initExpr));
    }

    return nullptr;
}

LocalVarDefExpr* LocalVarDefExpr::get(TypeRef type, Deque<NamedVar> vars) {
    return make<LocalVarDefExpr>(std::move(type), std::move(vars));
}

Value* EmitContext::convertTo(Value* value, Type* type) {
    const auto srcType = value->getType();

    if(srcType->isSame(type))
        return value;

    InstructionID id = InstructionID::None;
    if(type->isBoolean()) {
        if(srcType->isInteger()) {
            return makeOp<CompareInst>(InstructionID::SCmp, CompareOp::NotEqual, value, make<ConstantInteger>(srcType, 0));
        } else if(srcType->isFloatingPoint()) {
            return makeOp<CompareInst>(InstructionID::FCmp, CompareOp::NotEqual, value,
                                       make<ConstantFloatingPoint>(srcType, 0.0));
        }
    } else if(srcType->isInteger() && type->isInteger()) {
        if(srcType->getFixedSize() < type->getFixedSize())
            id = InstructionID::SExt;
        else
            id = InstructionID::Trunc;
    } else if(srcType->isInteger() && type->isFloatingPoint()) {
        if(strictMode.get())
            reportFatal("implicit I2F conversion is not allowed in strict mode");
        id = InstructionID::S2F;
    } else if(srcType->isFloatingPoint() && type->isInteger()) {
        if(strictMode.get())
            reportFatal("implicit F2I conversion is not allowed in strict mode");
        id = InstructionID::F2S;
    } else if(srcType->isFloatingPoint() && type->isFloatingPoint()) {
        id = InstructionID::FCast;
    }

    if(id == InstructionID::None)
        reportFatal("");

    return makeOp<CastInst>(id, type, value);
}
Value* EmitContext::getRValue(Expr* expr) {
    const auto val = expr->emit(*this);
    if(expr->isLValue()) {
        if(!val->isGlobal() && !val->getType()->isPointer())
            reportFatal("");
        if(val->getType()->isPointer())
            return makeOp<LoadInst>(val);
    }

    return val;
}
Value* EmitContext::getLValue(Expr* expr) {
    if(!expr->isLValue())
        reportFatal("");
    const auto val = expr->emit(*this);
    if(val->isGlobal())
        reportFatal("");
    return val;
}
void EmitContext::pushScope() {
    mScopes.push_back({});
}
void EmitContext::popScope() {
    mScopes.pop_back();
}
void EmitContext::addIdentifier(StringAST identifier, Value* value) {
    assert(!mScopes.empty());
    auto& scope = mScopes.back();
    if(scope.count(identifier))
        reportFatal("");
    scope.emplace(std::move(identifier), value);
}
Value* EmitContext::lookupIdentifier(const StringAST& identifier) {
    assert(!mScopes.empty());

    for(auto iter = mScopes.crbegin(); iter != mScopes.crend(); ++iter)
        if(auto it = iter->find(identifier); it != iter->cend())
            return it->second;
    reportFatal("");
}
EmitContext::EmitContext(Module* module) : mModule{ module } {
    mInteger = make<IntegerType>(32U);
    mFloat = make<FloatingPointType>(true);
    mChar = make<IntegerType>(8U);
}
Type* EmitContext::getType(const StringAST& type, TypeLookupSpace space, const ArraySize& arraySize) const {
    Type* ret = nullptr;
    if(space == TypeLookupSpace::Default) {
        if(type == "int")
            ret = mInteger;
        else if(type == "float")
            ret = mFloat;
        else if(type == "char")
            ret = mChar;
    } else if(space == TypeLookupSpace::Struct) {
        const auto iter = mStructTypes.find(type);
        if(iter != mStructTypes.cend())
            ret = iter->second;
    }

    if(!ret)
        reportNotImplemented();

    for(auto iter = arraySize.rbegin(); iter != arraySize.rend(); ++iter) {
        // TODO: handle array
        reportNotImplemented();
        // ret = make<ArrayType>(ret, *iter);
    }
    return ret;
}
void EmitContext::addIdentifier(StringAST identifier, StructType* type) {
    if(mStructTypes.count(identifier))
        reportFatal("");
    mStructTypes.emplace(std::move(identifier), type);
}

CMMC_NAMESPACE_END
