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
#include <cmmc/IR/Instruction.hpp>
#include <cmmc/IR/Value.hpp>
#include <cmmc/Support/Arena.hpp>
#include <cmmc/Support/LabelAllocator.hpp>
#include <cstdint>
#include <ostream>

CMMC_NAMESPACE_BEGIN

class Function;

class Block final {
    Function* mFunction;
    String mLabel;
    List<Instruction*> mInstructions;

public:
    explicit Block(Function* function) : mFunction{ function } {}
    void dump(std::ostream& out) const;
    void relabel(LabelAllocator& allocator) const;
    void dumpLabeled(std::ostream& out) const;
    bool verify(std::ostream& out) const;

    [[nodiscard]] Instruction* getTerminator() const noexcept {
        return mInstructions.back();
    }

    [[nodiscard]] const String& getLabel() const noexcept {
        return mLabel;
    }
    void setLabel(String label) {
        mLabel = label;
    }

    List<Instruction*>& instructions() noexcept {
        return mInstructions;
    }
    [[nodiscard]] Function* getFunction() const noexcept {
        return mFunction;
    }
    void setFunction(Function* func) noexcept {
        mFunction = func;
    }

    void dumpAsTarget(std::ostream& out) const;
    Block* clone(std::unordered_map<Value*, Value*>& replace) const;
};
CMMC_ARENA_TRAIT(Block, IR);

CMMC_NAMESPACE_END
