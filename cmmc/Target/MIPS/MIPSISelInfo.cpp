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

#include <MIPS/InstInfoDecl.hpp>
#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/ISelInfo.hpp>
#include <cmmc/CodeGen/InstInfo.hpp>
#include <cmmc/CodeGen/MIR.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Target/MIPS/MIPS.hpp>
#include <cstdint>
#include <cstring>
#include <iostream>

CMMC_TARGET_NAMESPACE_BEGIN

static bool isZero(const MIROperand& operand) {
    if(operand.isReg() && operand.reg() == MIPS::X0)
        return true;
    return operand.isImm() && operand.imm() == 0;
}

static MIPSInst getBranchWithZeroOpcode(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    switch(op) {
        case CompareOp::ICmpSignedLessThan:
            return BLTZ;
        case CompareOp::ICmpSignedLessEqual:
            return BLEZ;
        case CompareOp::ICmpSignedGreaterThan:
            return BGTZ;
        case CompareOp::ICmpSignedGreaterEqual:
            return BGEZ;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

static MIPSInst getBranchEqualityOpcode(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    switch(op) {
        case CompareOp::ICmpEqual:
            return BEQ;
        case CompareOp::ICmpNotEqual:
            return BNE;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

static MIROperand getVRegAs(ISelContext& ctx, const MIROperand& ref) {
    return MIROperand::asVReg(ctx.getCodeGenCtx().nextId(), ref.type());
}

static MIROperand getHILO() {
    return MIROperand::asISAReg(MIPS::HILO, OperandType::Special);
}

static MIROperand getCC() {
    return MIROperand::asISAReg(MIPS::CC, OperandType::Special);
}

static MIROperand getZero(const MIROperand& operand) {
    return MIROperand::asISAReg(MIPS::X0, operand.type());
}

static MIROperand getOne(const MIROperand& operand) {
    return MIROperand::asImm(1, operand.type());
}

static bool selectAddrOffset(const MIROperand& addr, ISelContext& ctx, MIROperand& base, MIROperand& offset) {
    const auto addrInst = ctx.lookupDef(addr);
    if(addrInst) {
        if(addrInst->opcode() == InstLoadStackObjectAddr) {
            base = addrInst->getOperand(1);
            offset = MIROperand::asImm(0, OperandType::Int32);
            return true;
        }
        if(addrInst->opcode() == InstAdd) {
            base = addrInst->getOperand(1);
            const auto off = addrInst->getOperand(2);
            if(isOperandIReg(base) && isOperandImm16(off)) {
                base = addrInst->getOperand(1);
                offset = off;
                if(auto baseReg = ctx.getRegRef(base, *addrInst)) {
                    base = *baseReg;
                    return true;
                }
            }
        }
        // TODO: move to emitLoadGlobalAddress?
        if(addrInst->opcode() == InstLoadGlobalAddress) {
            const auto reloc = addrInst->getOperand(1);
            const auto hiBits = getHighBits(reloc);
            const auto loBits = getLowBits(reloc);
            base = getVRegAs(ctx, addr);
            ctx.newInst(LUI).setOperand<0>(base).setOperand<1>(hiBits);
            offset = loBits;
            return true;
        }
    }
    if(isOperandIReg(addr)) {
        base = addr;
        offset = MIROperand::asImm(0, OperandType::Int32);
        return true;
    }
    return false;
}

static MIPSInst getLoadOpcode(const MIROperand& dst) {
    switch(dst.type()) {
        case OperandType::Bool:
        case OperandType::Int8:
            return LB;
        case OperandType::Int16:
            return LH;
        case OperandType::Int32:
            return LW;
        case OperandType::Float32:
            return LWC1;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

static MIPSInst getZExtLoadOpcode(const MIROperand& dst) {
    switch(dst.type()) {
        case OperandType::Int8:
            return LBU;
        case OperandType::Int16:
            return LHU;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

static MIPSInst getStoreOpcode(const MIROperand& src) {
    switch(src.type()) {
        case OperandType::Bool:
        case OperandType::Int8:
            return SB;
        case OperandType::Int16:
            return SH;
        case OperandType::Int32:
            return SW;
        case OperandType::Float32:
            return SWC1;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

static MIROperand getIReg(ISelContext& ctx, const MIROperand& src) {
    if(isOperandIReg(src))
        return src;
    if(isZero(src)) {
        return getZero(src);
    }
    auto dst = getVRegAs(ctx, src);
    ctx.newInst(InstLoadImm).setOperand<0>(dst).setOperand<1>(src);
    return dst;
}

static MIPSInst getFCmpOpcode(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    switch(op) {
        case CompareOp::FCmpOrderedEqual:
            return C_EQ_S;
        case CompareOp::FCmpOrderedNotEqual:
            return C_UEQ_S;
        case CompareOp::FCmpOrderedLessThan:
            return C_OLT_S;
        case CompareOp::FCmpOrderedLessEqual:
            return C_OLE_S;
        case CompareOp::FCmpOrderedGreaterThan:
            return C_ULE_S;
        case CompareOp::FCmpOrderedGreaterEqual:
            return C_ULT_S;
        case CompareOp::FCmpUnorderedEqual:
            return C_UEQ_S;
        case CompareOp::FCmpUnorderedNotEqual:
            return C_EQ_S;
        case CompareOp::FCmpUnorderedLessThan:
            return C_ULT_S;
        case CompareOp::FCmpUnorderedLessEqual:
            return C_ULE_S;
        case CompareOp::FCmpUnorderedGreaterThan:
            return C_OLT_S;
        case CompareOp::FCmpUnorderedGreaterEqual:
            return C_OLE_S;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

static MIROperand shouldInvertFCmp(const MIROperand& operand) {
    const auto op = static_cast<CompareOp>(operand.imm());
    constexpr auto zero = MIROperand::asImm(0, OperandType::Special);
    constexpr auto one = MIROperand::asImm(1, OperandType::Special);
    switch(op) {
        case CompareOp::FCmpOrderedEqual:
        case CompareOp::FCmpOrderedLessThan:
        case CompareOp::FCmpOrderedLessEqual:
        case CompareOp::FCmpUnorderedEqual:
        case CompareOp::FCmpUnorderedGreaterThan:
        case CompareOp::FCmpUnorderedGreaterEqual:
            return zero;
        default:
            return one;
    }
}

static bool selectFCC_FPR_FPR(const MIROperand& lhs, const MIROperand& rhs, const MIROperand& flip, MIROperand& outLhs,
                              MIROperand& outRhs) {
    if(!(isOperandFPR(lhs) && isOperandFPR(rhs))) {
        return false;
    }
    outLhs = lhs;
    outRhs = rhs;
    if(flip.imm() == 1) {
        std::swap(outLhs, outRhs);
    }
    return true;
}

constexpr MIPSInst getIntegerBinaryOpcode(uint32_t opcode) {
    switch(opcode) {
        case InstAdd:
            return ADDU;
        case InstSub:
            return SUBU;
        case InstAnd:
            return AND;
        case InstOr:
            return OR;
        case InstXor:
            return XOR;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

constexpr MIPSInst getIntegerBinaryImmOpcode(uint32_t opcode) {
    switch(opcode) {
        case InstAdd:
            return ADDIU;
        case InstAnd:
            return ANDI;
        case InstOr:
            return ORI;
        case InstXor:
            return XORI;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

constexpr MIPSInst getShiftImmOpcode(uint32_t opcode) {
    switch(opcode) {
        case InstShl:
            return SLL;
        case InstLShr:
            return SRL;
        case InstAShr:
            return SRA;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

constexpr MIPSInst getShiftRegOpcode(uint32_t opcode) {
    switch(opcode) {
        case InstShl:
            return SLLV;
        case InstLShr:
            return SRLV;
        case InstAShr:
            return SRAV;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

constexpr MIPSInst getFloatingPointBinaryOpcode(uint32_t opcode) {
    switch(opcode) {
        case InstFAdd:
            return ADD_S;
        case InstFSub:
            return SUB_S;
        case InstFMul:
            return MUL_S;
        case InstFDiv:
            return DIV_S;
        default:
            reportUnreachable(CMMC_LOCATION());
    }
}

static bool buildSRA31(ISelContext& ctx, const MIROperand& val, MIROperand& sign) {
    sign = getVRegAs(ctx, val);
    ctx.newInst(SRA).setOperand<0>(sign).setOperand<1>(val).setOperand<2>(MIROperand::asImm(31, OperandType::Int32));
    return true;
}

CMMC_TARGET_NAMESPACE_END

#include <MIPS/ISelInfoImpl.hpp>

CMMC_TARGET_NAMESPACE_BEGIN

bool MIPSISelInfo::isLegalGenericInst(uint32_t opcode) const {
    switch(opcode) {
        case InstCopy:
        case InstCopyFromReg:
        case InstCopyToReg:
        case InstLoadRegFromStack:
        case InstStoreRegToStack:
        case InstLoadStackObjectAddr:
            return true;
        default:
            return false;
    }
}

static bool legalizeInst(MIRInst& inst, ISelContext& ctx) {
    bool modified = false;
    const auto swapImmReg = [&] {
        auto& lhs = inst.getOperand(1);
        auto& rhs = inst.getOperand(2);
        if(lhs.isImm() && !rhs.isImm()) {
            std::swap(lhs, rhs);
            modified = true;
            return true;
        }
        return false;
    };
    {
        auto& instInfo = ctx.getCodeGenCtx().instInfo.getInstInfo(inst);
        if(requireFlag(instInfo.getInstFlag(), InstFlagCommutative)) {
            swapImmReg();
        }
    }
    const auto imm2reg = [&](MIROperand& operand) {
        if(operand.isImm()) {
            if(operand.imm() == 0) {
                operand = getZero(operand);
            } else {
                const auto reg = getVRegAs(ctx, operand);
                ctx.newInst(InstLoadImm).setOperand<0>(reg).setOperand<1>(operand);
                operand = reg;
            }
            modified = true;
        }
    };
    const auto largeImm2reg = [&](MIROperand& operand, bool signedImm) {
        if(operand.isImm() && !(signedImm ? isOperandImm16(operand) : isOperandUImm16(operand))) {
            imm2reg(operand);
        }
    };
    switch(inst.opcode()) {
        case InstAdd:
        case InstAnd:
        case InstOr:
        case InstXor: {
            auto& lhs = inst.getOperand(1);
            auto& rhs = inst.getOperand(2);
            const auto signedImm = inst.opcode() == InstAdd;
            imm2reg(lhs);
            largeImm2reg(rhs, signedImm);
            break;
        }
        case InstSub: {
            auto& lhs = inst.getOperand(1);
            auto& rhs = inst.getOperand(2);
            imm2reg(lhs);
            if(rhs.isImm()) {
                auto neg = getNeg(rhs);
                if(isOperandImm16(neg)) {
                    rhs = neg;
                    inst.setOpcode(InstAdd);
                    modified = true;
                    break;
                }
            }
            imm2reg(rhs);
            break;
        }
        case InstNeg: {
            auto& val = inst.getOperand(1);
            inst.setOpcode(InstSub);
            inst.setOperand<2>(val);
            val = getZero(val);
            modified = true;
            break;
        }
        case InstAbs: {
            imm2reg(inst.getOperand(1));
            break;
        }
        case InstMul:
        case InstSDiv:
        case InstSRem:
        case InstUDiv:
        case InstURem: {
            auto& lhs = inst.getOperand(1);
            auto& rhs = inst.getOperand(2);
            imm2reg(lhs);
            imm2reg(rhs);
            break;
        }
        case InstICmp: {
            auto& op = inst.getOperand(3);
            if(!isICmpLessThanOrLessEqualOp(op) && swapImmReg()) {
                op = MIROperand::asImm(getReversedOp(static_cast<CompareOp>(op.imm())), OperandType::Special);
                modified = true;
            }

            auto& lhs = inst.getOperand(1);
            auto& rhs = inst.getOperand(2);
            // a <= c -> a < c + 1 (if no overflow occurs)
            if(isCompareOp(op, CompareOp::ICmpSignedLessEqual) && isOperandImm(rhs) &&
               rhs.imm() < getMaxSignedValue(rhs.type())) {
                op = MIROperand::asImm(CompareOp::ICmpSignedLessThan, OperandType::Special);
                rhs = MIROperand::asImm(rhs.imm() + 1, rhs.type());
                modified = true;
            }
            // a >= c -> a > c - 1 (if no overflow occurs)
            if(isCompareOp(op, CompareOp::ICmpSignedGreaterEqual) && isOperandImm(rhs) &&
               rhs.imm() > getMinSignedValue(rhs.type())) {
                op = MIROperand::asImm(CompareOp::ICmpSignedGreaterThan, OperandType::Special);
                rhs = MIROperand::asImm(rhs.imm() - 1, rhs.type());
                modified = true;
            }
            // a <= c -> a < c + 1 (if no overflow occurs)
            if(isCompareOp(op, CompareOp::ICmpUnsignedLessEqual) && isOperandImm(rhs) &&
               getUnsignedImm(rhs) < getMaxUnsignedValue(rhs.type())) {
                op = MIROperand::asImm(CompareOp::ICmpUnsignedLessThan, OperandType::Special);
                rhs = MIROperand::asImm(rhs.imm() + 1, rhs.type());
                modified = true;
            }
            // a >= c -> a > c - 1 (if no overflow occurs)
            if(isCompareOp(op, CompareOp::ICmpUnsignedGreaterEqual) && isOperandImm(rhs) && getUnsignedImm(rhs) > 0) {
                op = MIROperand::asImm(CompareOp::ICmpUnsignedGreaterThan, OperandType::Special);
                rhs = MIROperand::asImm(rhs.imm() - 1, rhs.type());
                modified = true;
            }
            if(isICmpGreaterThanOrGreaterEqualOp(op)) {
                std::swap(lhs, rhs);
                op = MIROperand::asImm(getReversedOp(static_cast<CompareOp>(op.imm())), OperandType::Special);
                modified = true;
            }
            imm2reg(lhs);
            if(isICmpEqualityOp(op) && !isZero(rhs)) {
                const auto dst = getVRegAs(ctx, lhs);
                ctx.newInst(InstXor).setOperand<0>(dst).setOperand<1>(lhs).setOperand<2>(rhs);
                lhs = dst;
                rhs = getZero(rhs);
                modified = true;
            } else {
                if(isCompareOp(op, CompareOp::ICmpUnsignedLessEqual))
                    imm2reg(rhs);
                else
                    largeImm2reg(rhs, true);
            }
            break;
        }
        case InstZExt: {
            auto& val = inst.getOperand(1);
            imm2reg(val);
            if(val.type() == OperandType::Bool) {
                inst.setOpcode(InstCopy);
                modified = true;
            }
            break;
        }
        case InstSExt:
        case InstTrunc: {
            imm2reg(inst.getOperand(1));
            break;
        }
        case InstStore: {
            auto& val = inst.getOperand(1);
            imm2reg(val);
            break;
        }
        case InstSelect: {
            auto& cond = inst.getOperand(1);
            imm2reg(cond);
            auto& lhs = inst.getOperand(2);
            imm2reg(lhs);
            break;
        }
        case InstShl:
        case InstAShr:
        case InstLShr: {
            auto& lhs = inst.getOperand(1);
            auto& shamt = inst.getOperand(2);
            imm2reg(lhs);
            if(!isOperandUImm5(shamt))
                imm2reg(shamt);
            break;
        }
        default:
            break;
    }

    return modified;
}

bool MIPSISelInfo::matchAndSelect(MIRInst& inst, ISelContext& ctx, bool allowComplexPattern) const {
    bool ret = legalizeInst(inst, ctx);
    if(allowComplexPattern) {
        // noop
    }
    return ret | matchAndSelectImpl(inst, ctx);
}

void MIPSISelInfo::postLegalizeInst(const InstLegalizeContext& ctx) const {
    auto& inst = ctx.inst;
    switch(inst.opcode()) {
        case InstCopy:
        case InstCopyFromReg:
        case InstCopyToReg: {
            auto& dst = inst.getOperand(0);
            auto& src = inst.getOperand(1);
            if(isOperandIReg(dst) && isOperandIReg(src)) {
                inst.setOpcode(MoveGPR);
            } else if(isOperandFPR(dst) && isOperandFPR(src)) {
                inst.setOpcode(MOV_S);
            } else {
                reportLegalizationFailure(inst, ctx.ctx, CMMC_LOCATION());
            }
            break;
        }
        case InstLoadImm: {
            auto& dst = inst.getOperand(0);
            auto& src = inst.getOperand(1);
            if(isOperandIReg(dst)) {
                if(isZero(src)) {
                    inst.setOpcode(MoveGPR);
                    src = getZero(src);
                    return;
                }
                if(isOperandImm16(src)) {
                    inst.setOpcode(LoadImm16);
                    return;
                }
                if(isOperandImm32(src)) {
                    inst.setOpcode(LoadImm32);
                    return;
                }
            }
            reportLegalizationFailure(inst, ctx.ctx, CMMC_LOCATION());
        }
        default:
            reportLegalizationFailure(inst, ctx.ctx, CMMC_LOCATION());
    }
}
void MIPSISelInfo::preRALegalizeInst(const InstLegalizeContext& ctx) const {
    auto& inst = ctx.inst;
    switch(inst.opcode()) {
        case Select_GPR_GPR: {
            auto& dst = inst.getOperand(0);
            auto& lhs = inst.getOperand(1);
            auto& rhs = inst.getOperand(2);
            auto& cond = inst.getOperand(3);
            ctx.instructions.insert(ctx.iter, MIRInst{ selectCopyOpcode(dst, rhs) }.setOperand<0>(dst).setOperand<1>(rhs));
            *ctx.iter = MIRInst{ MOVN }.setOperand<0>(dst).setOperand<1>(lhs).setOperand<2>(cond).setOperand<3>(dst);
            break;
        }
        case FCC2GPR: {
            auto& dst = inst.getOperand(0);
            const auto cc = inst.getOperand(1);
            const auto flip = inst.getOperand(2).imm();
            ctx.instructions.insert(
                ctx.iter, MIRInst{ InstLoadImm }.setOperand<0>(dst).setOperand<1>(MIROperand::asImm(1, OperandType::Int32)));
            *ctx.iter =
                MIRInst{ flip ? MOVT : MOVF }.setOperand<0>(dst).setOperand<1>(getZero(dst)).setOperand<2>(cc).setOperand<3>(dst);
            break;
        }
        case Select_FCC_FPR_FPR: {
            auto& dst = inst.getOperand(0);
            auto& lhs = inst.getOperand(1);
            auto& rhs = inst.getOperand(2);
            auto& cc = inst.getOperand(3);
            ctx.instructions.insert(ctx.iter, MIRInst{ MOV_S }.setOperand<0>(dst).setOperand<1>(rhs));
            *ctx.iter = MIRInst{ MOVT_S }.setOperand<0>(dst).setOperand<1>(lhs).setOperand<2>(cc).setOperand<3>(dst);
            break;
        }
        case Select_GPR_FPR_FPR: {
            auto& dst = inst.getOperand(0);
            auto& lhs = inst.getOperand(1);
            auto& rhs = inst.getOperand(2);
            auto& cond = inst.getOperand(3);
            ctx.instructions.insert(ctx.iter, MIRInst{ MOV_S }.setOperand<0>(dst).setOperand<1>(lhs));
            *ctx.iter = MIRInst{ MOVZ_S }.setOperand<0>(dst).setOperand<1>(rhs).setOperand<2>(cond).setOperand<3>(dst);
            break;
        }
        default:
            reportLegalizationFailure(inst, ctx.ctx, CMMC_LOCATION());
    }
}
void MIPSISelInfo::legalizeInstWithStackOperand(const InstLegalizeContext& ctx, MIROperand& op, const StackObject& obj) const {
    auto& inst = ctx.inst;
    [[maybe_unused]] auto checkOpIdx = [&](uint32_t idx) { return &inst.getOperand(idx) == &op; };
    int64_t immVal = obj.offset;
    MIROperand base = sp;
    legalizeAddrBaseOffsetPostRA(ctx.instructions, ctx.iter, base, immVal);
    const auto imm = MIROperand::asImm(immVal, OperandType::Int32);
    switch(inst.opcode()) {
        case InstLoadStackObjectAddr: {
            assert(checkOpIdx(1));
            inst.setOpcode(ADDIU).setOperand<1>(base).setOperand<2>(imm);
            break;
        }
        case InstStoreRegToStack: {
            assert(checkOpIdx(1));
            inst.setOpcode(isOperandGPR(inst.getOperand(0)) ? SW : SWC1).setOperand<2>(base).setOperand<1>(imm);
            break;
        }
        case InstLoadRegFromStack: {
            assert(checkOpIdx(1));
            inst.setOpcode(isOperandGPR(inst.getOperand(0)) ? LW : LWC1).setOperand<2>(base).setOperand<1>(imm);
            break;
        }
        case SW:
        case SH:
        case SB:
        case SWC1:
        case LW:
        case LH:
        case LB:
        case LWC1: {
            assert(checkOpIdx(2));
            inst.setOperand<2>(base).setOperand<1>(imm);
            break;
        }
        default:
            reportLegalizationFailure(inst, ctx.ctx, CMMC_LOCATION());
    }
}

// constexpr auto scratch = MIROperand::asISAReg(MIPS::X3, OperandType::Int32);  // use $v1
void legalizeAddrBaseOffsetPostRA(MIRInstList& instructions, MIRInstList::iterator iter, MIROperand& base, int64_t& imm) {
    assert(isSignedImm<32>(imm));
    if(isSignedImm<16>(imm)) {
        return;
    }
    CMMC_UNUSED(instructions);
    CMMC_UNUSED(iter);
    CMMC_UNUSED(base);
    CMMC_UNUSED(imm);
    reportUnreachable(CMMC_LOCATION());
    // if(imm < -65536 || imm > 65534) {
    //     // lui $scratch, %hi(imm)
    //     // addu $scratch, $scratch, base
    //     // addr = $scratch + %lo(imm)
    //     const auto lo = static_cast<int16_t>(imm);
    //     const auto hi = static_cast<uint16_t>((imm - lo) >> 16);
    //     assert(isSignedImm<16>(lo));
    //     assert(isUnsignedImm<16>(static_cast<intmax_t>(hi)));
    //     instructions.insert(iter,
    //                         MIRInst{ LUI }.setOperand<0>(scratch).setOperand<1>(
    //                             MIROperand::asImm(static_cast<intmax_t>(hi), OperandType::Int32)));
    //     instructions.insert(iter, MIRInst{ ADDU }.setOperand<0>(scratch).setOperand<1>(scratch).setOperand<2>(base));
    //     base = scratch;
    //     imm = static_cast<int64_t>(lo);
    // } else {
    //     // addiu $scratch, base, -32768/32767
    //     // addr = $scratch + %lo(imm)
    //     const auto adjust = imm < 0 ? -32768 : 32767;
    //     instructions.insert(iter,
    //                         MIRInst{ ADDIU }.setOperand<0>(scratch).setOperand<1>(base).setOperand<2>(
    //                             MIROperand::asImm(adjust, OperandType ::Int32)));
    //     base = scratch;
    //     imm -= adjust;
    //     assert(isSignedImm<16>(imm));
    // }
}
void adjustReg(MIRInstList& instructions, MIRInstList::iterator iter, const MIROperand& dst, const MIROperand& src, int64_t imm) {
    if(dst == src && imm == 0)
        return;

    MIROperand base = src;
    legalizeAddrBaseOffsetPostRA(instructions, iter, base, imm);
    instructions.insert(
        iter, MIRInst{ ADDIU }.setOperand<0>(dst).setOperand<1>(base).setOperand<2>(MIROperand::asImm(imm, OperandType::Int32)));
}
void MIPSISelInfo::postLegalizeInstSeq(const CodeGenContext& ctx, MIRInstList& instructions) const {
    assert(!ctx.flags.endsWithTerminator);
    constexpr bool alwaysInsertNop = true;  // FIXME
    // insert nops/place insts without side-effects after branch/jump instructions
    uint32_t lastStatus = 0b00;  // 0: with delay slot 1: without delay slot
    for(auto iter = instructions.begin(); iter != instructions.end(); ++iter) {
        auto& inst = *iter;
        auto& instInfo = ctx.instInfo.getInstInfo(inst);
        if(!requireFlag(instInfo.getInstFlag(), InstFlagWithDelaySlot)) {
            lastStatus = (lastStatus << 1) | 1;
            continue;
        }
        if(alwaysInsertNop || (lastStatus & 0b11) != 0b11) {
            instructions.insert(iter, MIRInst{ Nop });
        }
        std::swap(*iter, *std::prev(iter));
        lastStatus = 1;  // 0b01
    }
}
MIROperand MIPSISelInfo::materializeFPConstant(ConstantFloatingPoint* fp, LoweringContext& loweringCtx) const {
    if(fp->getType()->getFixedSize() == sizeof(float)) {
        const auto val = static_cast<float>(fp->getValue());
        uint32_t rep;
        memcpy(&rep, &val, sizeof(float));
        if(rep == 0) {
            // mtc1
            const auto dst = loweringCtx.newVReg(OperandType::Float32);
            loweringCtx.emitInst(
                MIRInst{ MTC1 }.setOperand<0>(MIROperand::asISAReg(MIPS::X0, OperandType::Int32)).setOperand<1>(dst));
            return dst;
        }
    }
    return MIROperand{};
}
bool MIPSISelInfo::lowerInst(Instruction* inst, LoweringContext& loweringCtx) const {
    if(inst->getInstID() == InstructionID::UnsignedTrunc || inst->getInstID() == InstructionID::SignedTrunc) {
        auto src = loweringCtx.mapOperand(inst->getOperand(0));
        if(src.type() == OperandType::Int32 && inst->getType()->isSame(inst->getOperand(0)->getType())) {
            auto dst = loweringCtx.newVReg(OperandType::Int32);
            loweringCtx.emitCopy(dst, src);
            loweringCtx.addOperand(inst, dst);
            return true;
        }
    }
    return false;
}
void MIPSISelInfo::lowerIndirectJump(MIRJumpTable* jumpTable, const MIROperand& offset, LoweringContext& ctx) const {
    const auto tablePtr = ctx.newVReg(ctx.getPtrType());
    ctx.emitInst(MIRInst{ InstLoadGlobalAddress }.setOperand<0>(tablePtr).setOperand<1>(MIROperand::asReloc(jumpTable)));
    const auto byteOffset = ctx.newVReg(ctx.getPtrType());
    ctx.emitInst(MIRInst{ InstShl }
                     .setOperand<0>(byteOffset)
                     .setOperand<1>(offset)
                     .setOperand<2>(MIROperand::asImm(2, OperandType::Int32)));
    const auto offsetPtr = ctx.newVReg(ctx.getPtrType());
    ctx.emitInst(MIRInst{ InstAdd }.setOperand<0>(offsetPtr).setOperand<1>(tablePtr).setOperand<2>(byteOffset));
    const auto offsetVal = ctx.newVReg(OperandType::Int32);
    ctx.emitInst(MIRInst{ InstLoad }.setOperand<0>(offsetVal).setOperand<1>(offsetPtr));
    const auto targetAddress = ctx.newVReg(ctx.getPtrType());
    ctx.emitInst(MIRInst{ InstAdd }.setOperand<0>(targetAddress).setOperand<1>(tablePtr).setOperand<2>(offsetVal));
    ctx.emitInst(MIRInst{ JR_IndirectJump }.setOperand<0>(targetAddress).setOperand<1>(MIROperand::asReloc(jumpTable)));
}
CMMC_TARGET_NAMESPACE_END
