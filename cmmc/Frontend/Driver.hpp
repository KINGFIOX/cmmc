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
#include "cmmc/Config.hpp"
#include <memory>
#include <ostream>
#include <string>

CMMC_NAMESPACE_BEGIN

class Module;
class DriverImpl;

class Driver final {
    void parse(const std::string& file, bool recordHierarchy, bool strictMode);
    std::unique_ptr<DriverImpl> mImpl;

public:
    Driver(const std::string& file, bool recordHierarchy, bool strictMode);
    ~Driver();
    void emit(Module& module);
    void dump(std::ostream& out);
};

CMMC_NAMESPACE_END
