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

// mips o32 abi, delay slot is not supported

#include <MIPS/ISelInfoDecl.hpp>
#include <MIPS/InstInfoDecl.hpp>
#include <MIPS/ScheduleModelDecl.hpp>
#include <cmmc/CodeGen/CodeGenUtils.hpp>
#include <cmmc/CodeGen/ScheduleModel.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>
#include <cstdint>
#include <memory>

CMMC_MIR_NAMESPACE_BEGIN

extern StringOpt targetMachine;  // NOLINT

class MIPSDataLayout final : public DataLayout {
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
        return 4;
    }
    [[nodiscard]] size_t getCodeAlignment() const noexcept override {
        return 4;
    }
};

class MIPSTarget final : public Target {
    MIPSDataLayout mDataLayout;

public:
    [[nodiscard]] const DataLayout& getDataLayout() const noexcept override {
        return mDataLayout;
    }
    [[nodiscard]] const TargetInstInfo& getInstInfo() const noexcept override {
        return MIPS::getMIPSInstInfo();
    }
    [[nodiscard]] const TargetISelInfo& getISelInfo() const noexcept override {
        return MIPS::getMIPSISelInfo();
    }
    [[nodiscard]] const TargetScheduleModel& getScheduleModel() const noexcept override {
        return MIPS::getMIPSScheduleModel();
    }
    void emitAssembly(const MIRModule& module, std::ostream& out) const override {
        CMMC_UNUSED(module);
        CMMC_UNUSED(out);
        reportNotImplemented(CMMC_LOCATION());
    }
};

CMMC_TARGET("mips", MIPSTarget);

CMMC_MIR_NAMESPACE_END
