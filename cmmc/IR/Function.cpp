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

#include <cmmc/IR/Function.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/LabelAllocator.hpp>
#include <cstdint>
#include <string>
#include <string_view>

CMMC_NAMESPACE_BEGIN

void Function::dump(std::ostream& out) const {
    if(getLinkage() == Linkage::Internal)
        out << "internal ";
    out << "func @" << getSymbol();
    getType()->dump(out);
    if(!mAttr.empty()) {
        out << " { ";
#define HANDLE_ATTR(NAME)                      \
    if(mAttr.hasAttr(FunctionAttribute::NAME)) \
    out << #NAME " "

        HANDLE_ATTR(NoMemoryRead);
        HANDLE_ATTR(NoMemoryWrite);
        HANDLE_ATTR(NoSideEffect);
        HANDLE_ATTR(Stateless);
        HANDLE_ATTR(NoAlias);
        HANDLE_ATTR(NoReturn);
        HANDLE_ATTR(NoRecurse);

#undef HANDLE_ATTR
        out << "}";
    }

    // TODO: print CC

    if(mBlocks.empty()) {  // decl only
        out << ';' << std::endl;
        return;
    }

    LabelAllocator allocator;
    for(auto block : mBlocks) {
        block->setLabel(allocator.allocate(block->getLabel()));
        block->relabel();
    }
    out << " {" << std::endl;
    for(auto block : mBlocks)
        block->dump(out);
    out << '}' << std::endl;
}

bool Function::verify(std::ostream& out) const {
    for(auto block : mBlocks) {
        if(block->getFunction() != this) {
            out << "bad ownership" << std::endl;
            return false;
        }
        if(!block->verify(out))
            return false;
    }
    return true;
}

void Function::dumpCFG(std::ostream& out) const {
    out << "digraph " << getSymbol() << '{' << std::endl;
    std::unordered_map<Block*, std::string> ids;
    uint32_t id = 0;

    using namespace std::string_view_literals;

    for(auto block : mBlocks) {
        ids[block] = "b" + std::to_string(++id);

        std::string_view shape = "ellipse"sv;
        std::string_view color = "black"sv;

        auto terminator = block->getTerminator();
        switch(terminator->getInstID()) {
            case InstructionID::Ret: {
                shape = "doublecircle"sv;
                color = "green"sv;
                break;
            }
            case InstructionID::Unreachable: {
                shape = "doublecircle"sv;
                color = "red"sv;
                break;
            }
            default:
                break;
        }
        if(block == entryBlock())
            shape = "diamond"sv;

        out << ids[block] << " [shape = " << shape << ", color = " << color << ", label = \"" << block->getLabel() << "\"];"
            << std::endl;
    }

    for(auto block : mBlocks) {
        auto terminator = block->getTerminator();
        if(terminator->isBranch()) {
            auto branch = terminator->as<ConditionalBranchInst>();
            auto& trueTarget = branch->getTrueTarget();
            out << ids[block] << "->" << ids[trueTarget.getTarget()] << ';' << std::endl;
            auto& falseTarget = branch->getFalseTarget();
            if(falseTarget.getTarget())
                out << ids[block] << "->" << ids[falseTarget.getTarget()] << ';' << std::endl;
        }
    }

    out << "}" << std::endl;
}

CMMC_NAMESPACE_END
