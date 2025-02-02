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
#include <cmmc/Support/StringFlyWeight.hpp>
#include <cstdint>
#include <string>
#include <unordered_map>

CMMC_NAMESPACE_BEGIN

class LabelAllocator final {
    std::unordered_map<String, int32_t, StringHasher> mBase;

public:
    String allocate(const String& base);
};

CMMC_NAMESPACE_END
