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

#include <cmmc/CodeGen/DataLayout.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Type.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <ostream>

CMMC_NAMESPACE_BEGIN

bool VoidType::isSame(Type* rhs) const {
    if(this == rhs)
        return true;
    return rhs->isVoid();
}
VoidType* VoidType::get() {
    static VoidType type;
    return &type;
}
void VoidType::dumpName(std::ostream& out) const {
    out << "void";
}
size_t VoidType::getSize(const DataLayout& dataLayout) const noexcept {
    reportUnreachable();
}
size_t VoidType::getAlignment(const DataLayout& dataLayout) const noexcept {
    reportUnreachable();
}

bool PointerType::isSame(Type* rhs) const {
    if(this == rhs)
        return true;
    return rhs->isPointer() && getPointee()->isSame(rhs->as<PointerType>()->getPointee());
}
PointerType* PointerType::get(Type* pointee) {
    return make<PointerType>(pointee);
}
void PointerType::dumpName(std::ostream& out) const {
    mPointee->dumpName(out);
    out << '*';
}
size_t PointerType::getSize(const DataLayout& dataLayout) const noexcept {
    return dataLayout.getPointerSize();
}
size_t PointerType::getAlignment(const DataLayout& dataLayout) const noexcept {
    return dataLayout.getBuiltinAlignment(this);
}

bool IntegerType::isSame(Type* rhs) const {
    if(this == rhs)
        return true;
    return rhs->isInteger() && (mBitWidth == rhs->as<IntegerType>()->mBitWidth);
}
size_t IntegerType::getFixedSize() const noexcept {
    return mBitWidth / 8 + (mBitWidth % 8 ? 1 : 0);
}
IntegerType* IntegerType::get(uint32_t bitWidth) {
    return make<IntegerType>(bitWidth);
}
void IntegerType::dumpName(std::ostream& out) const {
    out << 'i' << mBitWidth;
}
size_t IntegerType::getSize(const DataLayout&) const noexcept {
    return getFixedSize();
}
size_t IntegerType::getAlignment(const DataLayout& dataLayout) const noexcept {
    return dataLayout.getBuiltinAlignment(this);
}

FloatingPointType* FloatingPointType::get(bool isFloat) {
    return make<FloatingPointType>(isFloat);
}
bool FloatingPointType::isSame(Type* rhs) const {
    if(this == rhs)
        return true;
    return rhs->isFloatingPoint() && (mIsFloat == rhs->as<FloatingPointType>()->mIsFloat);
}
size_t FloatingPointType::getFixedSize() const noexcept {
    return mIsFloat ? sizeof(float) : sizeof(double);
}
void FloatingPointType::dumpName(std::ostream& out) const {
    out << (mIsFloat ? "f32" : "f64");
}
size_t FloatingPointType::getSize(const DataLayout&) const noexcept {
    return getFixedSize();
}
size_t FloatingPointType::getAlignment(const DataLayout& dataLayout) const noexcept {
    return dataLayout.getBuiltinAlignment(this);
}

bool FunctionType::isSame(Type* rhs) const {
    if(this == rhs)
        return true;
    if(!rhs->isFunction())
        return false;
    auto rt = rhs->as<FunctionType>();
    if(mArgTypes.size() != rt->mArgTypes.size())
        return false;
    if(!mRetType->isSame(rt->mRetType))
        return false;
    for(size_t idx = 0; idx < mArgTypes.size(); ++idx)
        if(!mArgTypes[idx]->isSame(rt->mArgTypes[idx]))
            return false;
    return true;
}
void FunctionType::dumpName(std::ostream& out) const {
    out << '(';
    bool isFirst = true;
    for(auto arg : mArgTypes) {
        if(!isFirst) {
            out << ", ";
        } else
            isFirst = false;
        arg->dumpName(out);
    }
    out << ") -> ";
    mRetType->dumpName(out);
}
size_t FunctionType::getSize(const DataLayout&) const noexcept {
    reportUnreachable();
}
size_t FunctionType::getAlignment(const DataLayout&) const noexcept {
    reportUnreachable();
}

void StructType::dump(std::ostream& out) const {
    out << "struct " << mName;
    out << " {";
    bool isFirst = true;
    for(auto& field : mFields) {
        if(!isFirst) {
            out << ", ";
        } else
            isFirst = false;

        field.type->dumpName(out);
        out << ' ' << field.fieldName;
    }
    out << "};" << std::endl;
}
void StructType::dumpName(std::ostream& out) const {
    out << "struct " << mName;
}
bool StructType::isSame(Type* rhs) const {
    return this == rhs;
}
size_t StructType::getSize(const DataLayout& dataLayout) const noexcept {
    size_t offset = 0;
    for(auto& field : mFields) {
        const auto size = field.type->getSize(dataLayout);
        const auto alignment = field.type->getAlignment(dataLayout);
        offset = ((offset + alignment - 1) / alignment + 1) * alignment + size;
    }
    return offset;
}
size_t StructType::getAlignment(const DataLayout& dataLayout) const noexcept {
    size_t maxAlignment = 1;
    for(auto& field : mFields)
        maxAlignment = std::max(maxAlignment, field.type->getAlignment(dataLayout));
    return maxAlignment;
}
ConstantOffset* StructType::getOffset(const std::string_view& fieldName) const {
    for(uint32_t idx = 0; idx < mFields.size(); ++idx)
        if(mFields[idx].fieldName == fieldName)
            return make<ConstantOffset>(this, idx);
    reportFatal("");
}
Type* StructType::getFieldType(const ConstantOffset* offset) const {
    if(offset->base() != this)
        reportFatal("");
    assert(offset->index() <= mFields.size());
    return mFields[offset->index()].type;
}

PointerType* ArrayType::getPointerType() const {
    return make<PointerType>(mElementType);
}
void ArrayType::dumpName(std::ostream& out) const {
    out << '[' << mElementCount << " * ";
    mElementType->dumpName(out);
    out << ']';
}
bool ArrayType::isSame(Type* rhs) const {
    if(this == rhs)
        return true;
    if(auto rhsArray = dynamic_cast<ArrayType*>(rhs))
        return mElementCount == rhsArray->mElementCount && mElementType->isSame(rhsArray->mElementType);
    return false;
}
size_t ArrayType::getSize(const DataLayout& dataLayout) const noexcept {
    const auto size = mElementType->getSize(dataLayout);
    const auto alignment = mElementType->getAlignment(dataLayout);
    return (size + alignment - 1) / alignment * alignment * mElementCount;
}
size_t ArrayType::getAlignment(const DataLayout& dataLayout) const noexcept {
    return mElementType->getAlignment(dataLayout);
}

CMMC_NAMESPACE_END
