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
#include <cmmc/CodeGen/GMIR.hpp>
#include <cstdint>
#include <vector>

CMMC_NAMESPACE_BEGIN

struct LiveRange final {
    std::unordered_map<const GMIRBasicBlock*, std::pair<GMIRInst*, GMIRInst*>> segments;
};

class LiveRangeAnalysisResult final {
    std::unordered_map<uint32_t, LiveRange> mInfo;

public:
    std::unordered_map<uint32_t, LiveRange>& storage() {
        return mInfo;
    }
    const LiveRange& query(uint32_t idx) const {
        return mInfo.at(idx);
    }
};

LiveRangeAnalysisResult calcLiveRange(const GMIRFunction& func);

CMMC_NAMESPACE_END
