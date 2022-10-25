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
#include <cmmc/IR/Type.hpp>
#include <cmmc/IR/Value.hpp>
#include <cstdint>
#include <ostream>

CMMC_NAMESPACE_BEGIN

class ConstantValue : public Value {
protected:
    template <typename T, typename Callable>
    bool isEqualImpl(ConstantValue* rhs, Callable callable) const {
        if(this == rhs)
            return true;
        if(auto rhsValue = dynamic_cast<T*>(rhs)) {
            if(!this->getType()->isSame(rhs->getType()))
                return false;
            return callable(rhsValue);
        }
        return false;
    }

public:
    explicit ConstantValue(const Type* type) : Value{ type } {}
    bool isConstant() const noexcept override {
        return true;
    }
    virtual bool isEqual(ConstantValue* rhs) const = 0;
    virtual size_t hash() const = 0;
};

struct ConstantHasher final {
    size_t operator()(const ConstantValue* val) const {
        return val->hash();
    }
};

struct ConstantEqual final {
    bool operator()(ConstantValue* lhs, ConstantValue* rhs) const {
        return lhs->isEqual(rhs);
    }
};

class ConstantInteger final : public ConstantValue {
    intmax_t mValue;

public:
    ConstantInteger(const Type* type, intmax_t value) : ConstantValue{ type }, mValue{ value } {
        assert(type->isInteger());
    }
    void dump(std::ostream& out) const override;

    uintmax_t getZeroExtended() const noexcept;
    intmax_t getSignExtended() const noexcept;
    bool isEqual(ConstantValue* rhs) const override;
    size_t hash() const override;
};

class ConstantFloatingPoint final : public ConstantValue {
    double mValue;

public:
    ConstantFloatingPoint(const Type* type, double value) : ConstantValue{ type }, mValue{ value } {
        assert(type->isFloatingPoint());
    }
    void dump(std::ostream& out) const override;
    double getValue() const noexcept;
    bool isEqual(double val) const noexcept;
    bool isEqual(ConstantValue* rhs) const override;
    size_t hash() const override;
};

class ConstantOffset final : public ConstantValue {
    const StructType* mBase;
    uint32_t mIndex;

public:
    ConstantOffset(const StructType* base, uint32_t index) : ConstantValue{ VoidType::get() }, mBase{ base }, mIndex{ index } {}
    void dump(std::ostream& out) const override;
    const StructType* base() const noexcept {
        return mBase;
    }
    uint32_t index() const noexcept {
        return mIndex;
    }
    String getName() const;
    bool isEqual(ConstantValue* rhs) const override;
    size_t hash() const override;
};

class ConstantArray final : public ConstantValue {
    Vector<ConstantValue*> mValues;

public:
    ConstantArray(const ArrayType* type, Vector<ConstantValue*> values) : ConstantValue{ type }, mValues{ std::move(values) } {}
    void dump(std::ostream& out) const override;
    const Vector<ConstantValue*>& values() const noexcept {
        return mValues;
    }
    bool isEqual(ConstantValue* rhs) const override;
    size_t hash() const override;
};

class UndefinedValue final : public ConstantValue {
public:
    explicit UndefinedValue(const Type* type) : ConstantValue{ type } {
        assert(!type->isVoid());
    }
    void dump(std::ostream& out) const override;
    bool isEqual(ConstantValue* rhs) const override;
    size_t hash() const override;
};

CMMC_NAMESPACE_END
