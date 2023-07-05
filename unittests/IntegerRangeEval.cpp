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

#include <cmmc/Analysis/IntegerRange.hpp>
#include <cmmc/Config.hpp>
#include <cstdint>
#include <gtest/gtest.h>
#include <limits>
#include <ostream>

CMMC_NAMESPACE_BEGIN

struct RealRange final {
    int64_t minSignedValue = std::numeric_limits<int64_t>::max(), maxSignedValue = std::numeric_limits<int64_t>::min();
    uint64_t minUnsignedValue = std::numeric_limits<uint64_t>::max(), maxUnsignedValue = 0;
    uint32_t knownZeros = std::numeric_limits<uint32_t>::max(), knownOnes = std::numeric_limits<uint32_t>::max();

    void update(int32_t val) {
        const int64_t sval = val;
        minSignedValue = std::min(minSignedValue, sval);
        maxSignedValue = std::max(maxSignedValue, sval);
        const uint64_t zval = static_cast<uint32_t>(val);
        minUnsignedValue = std::min(minUnsignedValue, zval);
        maxUnsignedValue = std::max(maxUnsignedValue, zval);
        knownZeros &= ~val;
        knownOnes &= val;
    }
    [[nodiscard]] bool within(const IntegerRange& rhs) const {
        return rhs.minSignedValue() <= minSignedValue && maxSignedValue <= rhs.maxSignedValue() &&
            rhs.minUnsignedValue() <= minUnsignedValue && maxUnsignedValue <= rhs.maxUnsignedValue() &&
            (knownZeros & rhs.knownZeros()) == rhs.knownZeros() && (knownOnes & rhs.knownOnes()) == rhs.knownOnes();
    }
    IntegerRange toRange() const {
        IntegerRange range;
        range.setSignedRange(minSignedValue, maxSignedValue);
        range.setUnsignedRange(minUnsignedValue, maxUnsignedValue);
        range.setKnownBits(knownZeros, knownOnes);
        return range;
    }
    void print(std::ostream& out) const {
        toRange().print(out);
    }
};

static std::ostream& operator<<(std::ostream& out, const RealRange& range) {
    range.print(out);
    return out;
}

static std::ostream& operator<<(std::ostream& out, const IntegerRange& range) {
    range.print(out);
    return out;
}

template <typename C1, typename C2>
void testUnary(C1 eval, C2 rangeEval) {
    int64_t beg = -128, end = 128;
    // op [i, i]
    for(int64_t i = beg; i < end; ++i) {
        RealRange real;
        if(std::optional<int64_t> res = eval(i))
            real.update(static_cast<int32_t>(*res));
        IntegerRange valRange{ i };
        const auto evalRange = rangeEval(valRange);
        ASSERT_TRUE(real.within(evalRange)) << "op " << i << '\n'
                                            << "val:\n"
                                            << valRange << "expected:\n"
                                            << real << "result:\n"
                                            << evalRange;
    }
    // op [i, j]
    for(int64_t i = beg; i < end; ++i) {
        for(int64_t j = i; j < end; ++j) {
            RealRange val, real;
            for(int64_t x = i; x <= j; ++x)
                val.update(x);
            for(int64_t x = i; x <= j; ++x) {
                if(std::optional<int64_t> res = eval(x))
                    real.update(static_cast<int32_t>(*res));
            }
            IntegerRange valRange = val.toRange();
            const auto evalRange = rangeEval(valRange);
            ASSERT_TRUE(real.within(evalRange)) << "op [" << i << ", " << j << "]\n"
                                                << "val:\n"
                                                << valRange << "expected:\n"
                                                << real << "result:\n"
                                                << evalRange;
        }
    }
}

template <typename C1, typename C2>
void testBinary(C1 eval, C2 rangeEval) {
    int64_t beg = -16, end = 16;
    // [i, i] op [j, j]
    for(int64_t i = beg; i < end; ++i) {
        for(int64_t j = beg; j < end; ++j) {
            RealRange real;
            if(std::optional<int64_t> res = eval(i, j))
                real.update(static_cast<int32_t>(*res));
            IntegerRange lhsRange{ i };
            IntegerRange rhsRange{ j };
            const auto evalRange = rangeEval(lhsRange, rhsRange);
            ASSERT_TRUE(real.within(evalRange)) << i << " op " << j << '\n'
                                                << "lhs:\n"
                                                << lhsRange << "rhs:\n"
                                                << rhsRange << "expected:\n"
                                                << real << "result:\n"
                                                << evalRange;
        }
    }
    // [i, j] op [k, l]
    for(int64_t i = beg; i < end; ++i) {
        for(int64_t j = i; j < end; ++j) {
            for(int64_t k = beg; k < end; ++k) {
                for(int64_t l = k; l < end; ++l) {
                    RealRange lhs, rhs, real;
                    for(int64_t x = i; x <= j; ++x)
                        lhs.update(x);
                    for(int64_t y = k; y <= l; ++y)
                        rhs.update(y);
                    for(int64_t x = i; x <= j; ++x) {
                        for(int64_t y = k; y <= l; ++y) {
                            if(std::optional<int64_t> res = eval(x, y))
                                real.update(static_cast<int32_t>(*res));
                        }
                    }
                    IntegerRange lhsRange = lhs.toRange();
                    IntegerRange rhsRange = rhs.toRange();
                    const auto evalRange = rangeEval(lhsRange, rhsRange);
                    ASSERT_TRUE(real.within(evalRange)) << '[' << i << ", " << j << "] op [" << k << ", " << l << "]\n"
                                                        << "lhs:\n"
                                                        << lhsRange << "rhs:\n"
                                                        << rhsRange << "expected:\n"
                                                        << real << "result:\n"
                                                        << evalRange;
                }
            }
        }
    }
}

TEST(IntegerRangeEval, Add) {
    testBinary([](int64_t x, int64_t y) { return x + y; },
               [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs + rhs; });
}

TEST(IntegerRangeEval, Sub) {
    testBinary([](int64_t x, int64_t y) { return x - y; },
               [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs - rhs; });
}

TEST(IntegerRangeEval, Mul) {
    testBinary([](int64_t x, int64_t y) { return x * y; },
               [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs * rhs; });
}

TEST(IntegerRangeEval, SDiv) {
    testBinary(
        [](int64_t x, int64_t y) -> std::optional<int64_t> {
            if(y == 0)
                return std::nullopt;
            return x / y;
        },
        [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs.sdiv(rhs); });
}

TEST(IntegerRangeEval, UDiv) {
    testBinary(
        [](int64_t x, int64_t y) -> std::optional<int64_t> {
            if(y == 0)
                return std::nullopt;
            return static_cast<int64_t>(static_cast<uint32_t>(x) / static_cast<uint32_t>(y));
        },
        [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs.udiv(rhs); });
}

TEST(IntegerRangeEval, SRem) {
    testBinary(
        [](int64_t x, int64_t y) -> std::optional<int64_t> {
            if(y == 0)
                return std::nullopt;
            return x % y;
        },
        [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs.srem(rhs); });
}

TEST(IntegerRangeEval, URem) {
    testBinary(
        [](int64_t x, int64_t y) -> std::optional<int64_t> {
            if(y == 0)
                return std::nullopt;
            return static_cast<int64_t>(static_cast<uint32_t>(x) % static_cast<uint32_t>(y));
        },
        [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs.urem(rhs); });
}

TEST(IntegerRangeEval, And) {
    testBinary([](int64_t x, int64_t y) { return x & y; },
               [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs & rhs; });
}

TEST(IntegerRangeEval, Or) {
    testBinary([](int64_t x, int64_t y) { return x | y; },
               [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs | rhs; });
}

TEST(IntegerRangeEval, Xor) {
    testBinary([](int64_t x, int64_t y) { return x ^ y; },
               [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs ^ rhs; });
}

TEST(IntegerRangeEval, Shl) {
    testBinary(
        [](int64_t x, int64_t y) -> std::optional<int64_t> {
            if(0 <= y && y <= 32)
                return x << y;
            return std::nullopt;
        },
        [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs.shl(rhs); });
}

TEST(IntegerRangeEval, LShr) {
    testBinary(
        [](int64_t x, int64_t y) -> std::optional<int64_t> {
            if(0 <= y && y <= 32)
                return static_cast<int64_t>(static_cast<uint32_t>(x) >> static_cast<uint32_t>(y));
            return std::nullopt;
        },
        [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs.lshr(rhs); });
}

TEST(IntegerRangeEval, AShr) {
    testBinary(
        [](int64_t x, int64_t y) -> std::optional<int64_t> {
            if(0 <= y && y <= 32)
                return x >> y;
            return std::nullopt;
        },
        [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs.ashr(rhs); });
}

TEST(IntegerRangeEval, SMax) {
    testBinary([](int64_t x, int64_t y) { return std::max(x, y); },
               [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs.smax(rhs); });
}

TEST(IntegerRangeEval, SMin) {
    testBinary([](int64_t x, int64_t y) { return std::min(x, y); },
               [](const IntegerRange& lhs, const IntegerRange& rhs) { return lhs.smin(rhs); });
}

TEST(IntegerRangeEval, Abs) {
    testUnary([](int64_t x) { return std::abs(x); }, [](const IntegerRange& r) { return r.abs(); });
}

TEST(IntegerRangeEval, Neg) {
    testUnary([](int64_t x) { return -static_cast<int32_t>(x); }, [](const IntegerRange& r) { return r.neg(); });
}

CMMC_NAMESPACE_END