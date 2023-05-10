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

#pragma once
#include <cmmc/CodeGen/MIR.hpp>
#include <cstdint>
#include <string_view>

CMMC_MIR_NAMESPACE_BEGIN

enum OperandFlag : uint32_t {
    OperandFlagUse = 1 << 0,
    OperandFlagDef = 1 << 1,
    OperandFlagMetadata = 1 << 2,
};

enum InstFlag : uint32_t {
    InstFlagLoad = 1 << 0,
    InstFlagStore = 1 << 1,
    InstFlagBranch = 1 << 2,
    InstFlagTerminator = 1 << 3,
    InstFlagCopy = 1 << 4,
    InstFlagNop = 1 << 5,  // for block alignment
};

class InstInfo {
public:
    virtual ~InstInfo() = default;
    [[nodiscard]] virtual std::string_view getMnemonic() const noexcept = 0;
    [[nodiscard]] virtual uint32_t getOperandNum() const noexcept = 0;
    [[nodiscard]] virtual OperandFlag getOperandFlag(uint32_t idx) const noexcept = 0;
    [[nodiscard]] virtual InstFlag getInstFlag() const noexcept = 0;
};

class TargetInstInfo {
public:
    virtual ~TargetInstInfo() = default;
    [[nodiscard]] virtual const InstInfo& getInstInfo(uint32_t opcode) const = 0;
};

CMMC_MIR_NAMESPACE_END
