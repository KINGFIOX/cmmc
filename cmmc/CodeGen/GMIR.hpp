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
#include <array>
#include <cmmc/IR/GlobalValue.hpp>
#include <cmmc/IR/Instruction.hpp>
#include <cstdint>
#include <limits>
#include <ostream>
#include <unordered_map>
#include <variant>

CMMC_NAMESPACE_BEGIN

class GMIRBasicBlock;
class GMIRFunction;
struct GMIRSymbol;
class Target;

// TODO: recompute?
struct AddressSpace {
    static constexpr uint32_t VirtualReg = 0;
    static constexpr uint32_t Constant = 1;
    static constexpr uint32_t Stack = 2;
    static constexpr uint32_t Custom = 3;
};

enum class GMIRInstID {
    // AddressSpace
    Copy,
    Constant,
    GlobalAddress,
    // AddressSpaceIntrinsic,
    // Arithmetic
    Add,
    Sub,
    Mul,
    SDiv,
    UDiv,
    SRem,
    URem,
    Neg,
    FAdd,
    FSub,
    FMul,
    FDiv,
    FNeg,
    SCmp,
    UCmp,
    FCmp,
    And,
    Or,
    Xor,
    Shl,
    AShr,
    LShr,
    ArithIntrinsic,
    // ControlFlow
    Branch,
    BranchCond,
    Call,
    Ret,
    Unreachable,
    ControlFlowIntrinsic
};

struct Operand final {
    uint32_t addressSpace;
    uint32_t id;

    bool operator==(const Operand& rhs) const noexcept {
        return addressSpace == rhs.addressSpace && id == rhs.id;
    }
    bool operator!=(const Operand& rhs) const noexcept {
        return addressSpace != rhs.addressSpace || id != rhs.id;
    }
};

static constexpr Operand unusedOperand{ std::numeric_limits<uint32_t>::max(), std::numeric_limits<uint32_t>::max() };

struct CopyMInst final {
    Operand src;
    bool indirectSrc;
    int32_t srcOffset;
    Operand dst;
    bool indirectDst;
    int32_t dstOffset;
};

struct ConstantMInst final {
    Operand dst;
    std::variant<intmax_t, double> constant;
};

struct GlobalAddressMInst final {
    Operand dst;
    GMIRSymbol* global;
};

/*
struct AddressSpaceIntrinsicMInst final {
    uint32_t mIntrinsicID;

    uint32_t srcAddressSpace;
    uint32_t srcID;
    uint32_t dstAddressSpace;
    uint32_t dstID;
};
*/

struct UnaryArithmeticMIInst final {
    GMIRInstID instID;
    Operand src, dst;
};

struct BinaryArithmeticMIInst final {
    GMIRInstID instID;
    Operand lhs, rhs, dst;
};

struct ArithmeticIntrinsicMInst final {
    uint32_t intrinsicID;
    std::array<Operand, 3> src;
    Operand dst;
};

struct CompareMInst final {
    GMIRInstID instID;
    CompareOp compareOp;
    Operand lhs, rhs, dst;
};

struct BranchMInst final {
    GMIRBasicBlock* targetBlock;
};

struct BranchCompareMInst final {
    GMIRInstID instID;
    Operand lhs, rhs;
    CompareOp compareOp;
    GMIRBasicBlock* targetBlock;
};

struct CallMInst final {
    std::variant<Operand, GMIRSymbol*> callee;
    Operand dst;
};

struct UnreachableMInst final {};

struct RetMInst final {
    Operand retVal;
};

// TODO: more clear semantic?
// NOTICE: cannot modify PC
struct ControlFlowIntrinsicMInst final {
    uint32_t intrinsicID;
    Operand src, dst;
};

using GMIRInst = std::variant<CopyMInst, ConstantMInst, /*AddressSpaceIntrinsicMInst,*/ UnaryArithmeticMIInst,
                              BinaryArithmeticMIInst, ArithmeticIntrinsicMInst, CompareMInst, BranchMInst, BranchCompareMInst,
                              CallMInst, UnreachableMInst, RetMInst, ControlFlowIntrinsicMInst>;

class GMIRBasicBlock final {
    GMIRFunction* mFunction;
    std::list<GMIRInst> mInstructions;

public:
    explicit GMIRBasicBlock(GMIRFunction* function) : mFunction{ function } {}
    GMIRFunction* getFunction() const noexcept {
        return mFunction;
    }
    std::list<GMIRInst>& instructions() noexcept {
        return mInstructions;
    }
    const std::list<GMIRInst>& instructions() const noexcept {
        return mInstructions;
    }
    void dump(std::ostream& out, const Target& target, const std::unordered_map<const GMIRBasicBlock*, String>& blockMap) const;
};

class GMIRFunction final {
    uint32_t mUsedParameters;
    std::list<GMIRBasicBlock> mBasicBlocks;

public:
    explicit GMIRFunction(uint32_t usedParameters) : mUsedParameters{ usedParameters } {}
    uint32_t parameters() const noexcept {
        return mUsedParameters;
    }
    std::list<GMIRBasicBlock>& blocks() noexcept {
        return mBasicBlocks;
    }
    const std::list<GMIRBasicBlock>& blocks() const noexcept {
        return mBasicBlocks;
    }

    void dump(std::ostream& out, const Target& target) const;
};

class GMIRZeroStorage final {
public:
    void dump(std::ostream& out, const Target& target) const;
};

class GMIRStringStorage final {
public:
    void dump(std::ostream& out, const Target& target) const;
};

class GMIRDataStorage final {
public:
    void dump(std::ostream& out, const Target& target) const;
};

struct GMIRSymbol final {
    String symbol;
    Linkage linkage;
    std::variant<GMIRFunction, GMIRZeroStorage, GMIRStringStorage, GMIRDataStorage, std::monostate> def;

    void dump(std::ostream& out, const Target& target) const;
};

struct GMIRModule final {
    const Target& target;
    std::list<GMIRSymbol> symbols;

    explicit GMIRModule(const Target& target) : target{ target } {}
    void dump(std::ostream& out) const;
};

CMMC_NAMESPACE_END
