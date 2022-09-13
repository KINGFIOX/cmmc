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
#include <cmmc/IR/LabelAllocator.hpp>
#include <cmmc/Support/Diagnostics.hpp>

CMMC_NAMESPACE_BEGIN

void ExternalFunctionDeclaration::dump(std::ostream& out) const {
    reportNotImplemented();
}

void Function::dump(std::ostream& out) const {
    LabelAllocator allocator;
    for(auto block : mBlocks)
        block->setLabel(allocator.allocate(block->getLabel()));
    out << "func " << getSymbol();
    getType()->dump(out);
    out << " {" << std::endl;
    for(auto block : mBlocks)
        block->dump(out);
    out << '}' << std::endl;
}

bool Function::verify(std::ostream& out) const {
    for(auto block : mBlocks)
        if(!block->verify(out))
            return false;
    return true;
}

CMMC_NAMESPACE_END