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

#pragma once
#include <cmmc/CodeGen/GMIR.hpp>
#include <cmmc/CodeGen/Lowering.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <memory>

CMMC_NAMESPACE_BEGIN

enum class RISCVIntrinsic { Fma };
struct RISCVAddressSpace final : public AddressSpace {
    static constexpr uint32_t GPR = Custom + 0;    // NOLINT
    static constexpr uint32_t FPR_S = Custom + 1;  // NOLINT
    static constexpr uint32_t FPR_D = Custom + 2;  // NOLINT
};

class RISCVDataLayout final : public DataLayout {
public:
    [[nodiscard]] Endian getEndian() const noexcept override {
        return Endian::Little;
    }
    size_t getBuiltinAlignment(const Type* type) const noexcept override {
        assert(type->isPrimitive());
        if(type->isPointer())
            return getPointerSize();
        return type->getFixedSize();
    }
    [[nodiscard]] size_t getPointerSize() const noexcept override {
        return 8;
    }
    [[nodiscard]] size_t getCodeAlignment() const noexcept override {
        return 4;
    }
};

class RISCVLoweringInfo final : public LoweringInfo {
    String mUnused, mConstant, mStack, mVReg, mFPR;

public:
    RISCVLoweringInfo();
    void emitPrologue(LoweringContext& ctx, Function* func) const override;
    Operand getZeroImpl(LoweringContext& ctx, const Type* type) const override;
    [[nodiscard]] String getOperand(const Operand& operand) const override;
    [[nodiscard]] std::string_view getIntrinsicName(uint32_t intrinsicID) const override;
    void lower(ReturnInst* inst, LoweringContext& ctx) const override;
    void lower(FunctionCallInst* inst, LoweringContext& ctx) const override;
    void lower(FMAInst* inst, LoweringContext& ctx) const override;
};

class RISCVRegisterUsage final : public TargetRegisterUsage {
    uint32_t mGPR, mFPR;

public:
    RISCVRegisterUsage();
    void markAsUsed(const Operand& operand) override;
    void markAsDiscarded(const Operand& operand) override;
    Operand getFreeRegister(uint32_t src) override;
    uint32_t getRegisterClass(const Type* type) const override;
};

// RISC-V lp64d
class RISCVTarget final : public Target {
    std::unique_ptr<SubTarget> mSubTarget;
    RISCVDataLayout mDataLayout;
    RISCVLoweringInfo mLoweringInfo;

public:
    explicit RISCVTarget();
    [[nodiscard]] const DataLayout& getDataLayout() const noexcept override {
        return mDataLayout;
    }
    [[nodiscard]] const LoweringInfo& getTargetLoweringInfo() const noexcept override {
        return mLoweringInfo;
    }
    [[nodiscard]] std::unique_ptr<TargetRegisterUsage> newRegisterUsage() const override {
        return std::make_unique<RISCVRegisterUsage>();
    }
    [[nodiscard]] const SubTarget& getSubTarget() const noexcept override {
        return *mSubTarget;
    }
    void legalizeModuleBeforeCodeGen(Module& module, AnalysisPassManager& analysis) const override;
    void legalizeModuleBeforeOpt(Module& module, AnalysisPassManager& analysis) const override {
        CMMC_UNUSED(module);
        CMMC_UNUSED(analysis);
    }
    void legalizeFunc(GMIRFunction& func) const override;
    void emitAssembly(const GMIRModule& module, std::ostream& out) const override;
    [[nodiscard]] Operand getStackPointer() const noexcept override {
        return Operand{ RISCVAddressSpace::GPR, 2 };  // sp
    }
    [[nodiscard]] Operand getReturnAddress() const noexcept override {
        return Operand{ RISCVAddressSpace::GPR, 1 };  // ra
    }
    [[nodiscard]] size_t getStackPointerAlignment() const noexcept override {
        return 8U;  // 8-byte aligned
    }
    [[nodiscard]] bool isCalleeSaved(const Operand& op) const noexcept override;
    [[nodiscard]] bool isCallerSaved(const Operand& op) const noexcept override;
    [[nodiscard]] uint32_t getRegisterBitWidth(uint32_t) const noexcept override {
        return 64U;
    }
    void addExternalFuncIPRAInfo(GMIRSymbol* symbol, IPRAUsageCache& infoIPRA) const override;
};

CMMC_NAMESPACE_END
