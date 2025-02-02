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

#include <cassert>
#include <cmmc/CodeGen/Lowering.hpp>
#include <cmmc/CodeGen/Target.hpp>
#include <cmmc/Conversion/LLVM.hpp>
#include <cmmc/Conversion/TAC.hpp>
#include <cmmc/ExecutionEngine/Interpreter.hpp>
#include <cmmc/Frontend/Driver.hpp>
#include <cmmc/IR/ConstantValue.hpp>
#include <cmmc/IR/Module.hpp>
#include <cmmc/Support/Diagnostics.hpp>
#include <cmmc/Support/Options.hpp>
#include <cmmc/Support/Profiler.hpp>
#include <cmmc/Support/StaticReflection.hpp>
#include <cmmc/Support/Tune.hpp>
#include <cmmc/Transforms/TransformPass.hpp>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <optional>
#include <string>
#include <string_view>
#include <type_traits>
#include <variant>

using namespace cmmc;

CMMC_NAMESPACE_BEGIN

static Flag version;           // NOLINT
static Flag help;              // NOLINT
static Flag emitAST;           // NOLINT
static Flag emitIR;            // NOLINT
Flag strictMode;               // NOLINT
IntegerOpt optimizationLevel;  // NOLINT
static StringOpt outputPath;   // NOLINT
StringOpt executeInput;        // NOLINT
static Flag grammarCheck;      // NOLINT
static Flag dumpOptPipeline;   // NOLINT
static StringOpt language;     // NOLINT
static Flag withRuntime;       // NOLINT
namespace mir {
    extern StringOpt targetName;  // NOLINT
}

CMMC_INIT_OPTIONS_BEGIN
version.setName("version", 'v').setDesc("print CMMC build information");
help.setName("help", 'h').setDesc("print help information");
emitAST.setName("emitAST", 'a').setDesc("emit AST");
emitIR.setName("emitIR", 'i').setDesc("emit IR");
strictMode.setName("strict", 's').setDesc("disable language extensions (SPL only)");
optimizationLevel.withDefault(0).setName("opt", 'O').setDesc("optimiaztion level [0-3]");
outputPath.setName("output", 'o').setDesc("path to the output file");
grammarCheck.setName("grammar-check", 'g').setDesc("only check grammar");
executeInput.setName("execute-input", 'e').setDesc("execute with built-in interpreter");
dumpOptPipeline.setName("dump-opt-pipeline", 'P').setDesc("dump the transform pipeline in dot format");
language.setName("language", 'x').setDesc("Specify the language (Spl/SysY) explicitly");
withRuntime.withDefault(true).setName("with-runtime", 'X').setDesc("Emit built-in runtime (entry/IO) for emulator");
CMMC_INIT_OPTIONS_END

std::variant<int, SimulationFailReason> llvmExecMain(Module& module, const std::string& srcPath, SimulationIOContext& ioCtx);
std::optional<int> runMain(Module& module, SimulationIOContext& ctx, const std::string& filePath) {
    if(mir::targetName.get() == "llvm") {
#ifdef CMMC_WITH_LLVM_SUPPORT
        reportDebug() << "use LLVM Orc JIT backend" << std::endl;
        const auto retVal = llvmExecMain(module, filePath, ctx);
        return std::visit(
            [](auto ret) -> int {
                if constexpr(std::is_same_v<std::decay_t<decltype(ret)>, int>) {
                    return ret;
                } else {
                    reportError() << enumName(ret) << std::endl;
                    return EXIT_FAILURE;
                }
            },
            retVal);
#else
        CMMC_UNUSED(filePath);
        std::cerr << "Please compile cmmc with llvm backend to use OrcJIT" << std::endl;
        return EXIT_FAILURE;
#endif
    }

    Interpreter interpreter{ 1200'000'000'000ULL, 2ULL << 30, 1024, true };
    Function* func = nullptr;
    for(auto global : module.globals())
        if(global->isFunction() && global->getSymbol() == "main") {
            func = global->as<Function>();
            break;
        }
    auto runSim = [&]() -> std::variant<ConstantValue*, SimulationFailReason> {
        if(func)
            return interpreter.execute(module, *func, {}, &ctx);
        return SimulationFailReason::NoEntry;
    };
    return std::visit(
        [](auto ret) -> int {
            if constexpr(std::is_same_v<std::decay_t<decltype(ret)>, ConstantValue*>) {
                if(auto val = dynamic_cast<ConstantInteger*>(ret)) {
                    return static_cast<int>(val->getSignExtended());
                }
                return EXIT_FAILURE;
            } else {
                reportError() << enumName(ret) << std::endl;
                return EXIT_FAILURE;
            }
        },
        runSim());
}

CMMC_NAMESPACE_END

static std::string getOutputPath(const std::string& defaultPath) {
    const auto& path = outputPath.get(false);
    return path.empty() ? defaultPath : path;
}

static int runIRPipeline(Module& module, const std::string& base, const std::string& filePath, FrontEndLang lang) {
    initTune(filePath, mir::targetName.get());
    if(!module.verify(std::cerr)) {
        DiagnosticsContext::get().attach<Reason>("Invalid IR").reportFatal();
    }
    AnalysisPassManager analysis{ &module };
    const auto& target = module.getTarget();
    target.transformModuleBeforeOpt(module, analysis);
    analysis.invalidateModule();

    {
        Stage stage{ "optimize IR"sv };
        const auto opt = PassManager<Module>::get(static_cast<OptimizationLevel>(optimizationLevel.get()));
        opt->run(module, analysis);
    }
    if(!module.verify(std::cerr)) {
        DiagnosticsContext::get().attach<Reason>("Invalid optimized IR").reportFatal();
    }

    if(emitIR.get()) {
        const auto path = getOutputPath(base + ".ir2");
        reportDebug() << "emitIR >> "sv << path << std::endl;
        std::ofstream out{ path };
        module.dump(out);
        return EXIT_SUCCESS;
    }

    if(auto& input = executeInput.get(false); !input.empty()) {
        InputStream in{ input };
        const auto path = getOutputPath(base + ".out");
        reportDebug() << "simulation << "sv << input << " >> "sv << path << std::endl;
        OutputStream out{ path };
        SimulationIOContext ctx{ in, out };

        auto ret = runMain(module, ctx, filePath);
        return ret.value_or(EXIT_FAILURE);
    }

    const auto emitLLVM = (mir::targetName.get() == "llvm");
    if(emitLLVM) {
#ifdef CMMC_WITH_LLVM_SUPPORT
        const auto output = getOutputPath(base + ".ll");
        llvmCodeGen(module, filePath, output);
        return EXIT_SUCCESS;
#else
        std::cerr << "Please compile cmmc with llvm backend" << std::endl;
        return EXIT_FAILURE;
#endif
    }

    const auto emitTAC = (mir::targetName.get() == "tac");
    const auto path = getOutputPath(base + (emitTAC ? ".ir" : ".s"));
    reportDebug() << (emitTAC ? "emitTAC >> " : "emitASM >> ") << path << std::endl;

    std::ofstream out{ path };
    const auto machineModule =
        mir::lowerToMachineModule(module, analysis, static_cast<OptimizationLevel>(optimizationLevel.get()));
    {
        Stage stage{ "dump ASM"sv };
        auto runtime = mir::RuntimeType::None;
        if(withRuntime.get()) {
            if(lang == FrontEndLang::Spl)
                runtime = mir::RuntimeType::SplRuntime;
            if(lang == FrontEndLang::SysY)
                runtime = mir::RuntimeType::SysYRuntime;
        }
        target.emitAssembly(*machineModule, out, runtime);
    }

    return EXIT_SUCCESS;
}

static bool endswith(const std::string& str, const std::string_view& ext) {
    if(str.size() < ext.size())
        return false;
    return str.substr(str.size() - ext.size()) == ext;
}

int mainImpl(int argc, char** argv) {
    int start = parseCommands(argc, argv);

    if(version.get()) {
        reportInfo() << "CMMC " CMMC_VERSION << std::endl;
        reportInfo() << "Build time: " __TIME__ " " __DATE__ << std::endl;
        reportInfo() << "LLVM Support: "
#ifdef CMMC_WITH_LLVM_SUPPORT
                        "\033[1;32mON\033[0m"
#else
                        "\033[1;31mOFF\033[0m"
#endif
                     << std::endl;
        return EXIT_SUCCESS;
    }

    if(help.get()) {
        printHelpInfo();
        return EXIT_SUCCESS;
    }

    if(dumpOptPipeline.get()) {
        PassManager<Module>::printOptPipeline(static_cast<OptimizationLevel>(optimizationLevel.get()));
        return EXIT_SUCCESS;
    }

    if(argc == start) {
        reportError() << "no input file"sv << std::endl;
        return EXIT_FAILURE;
    }

    if(argc - start != 1) {
        reportError() << "only one input file is accepted"sv << std::endl;
        return EXIT_FAILURE;
    }

    try {
        std::string path = argv[start];  // NOLINT

        bool isSpl = endswith(path, ".spl"sv);
        bool isSysY = endswith(path, ".sy"sv);

        const auto& type = language.get(false);
        if(!type.empty()) {
            if(type == "Spl") {
                isSpl = true;
                isSysY = false;
            } else if(type == "SysY") {
                isSpl = false;
                isSysY = true;
            } else {
                DiagnosticsContext::get().attach<Reason>("unrecognized language").attach<Reason>(type).reportFatal();
            }
        }

        if(isSpl || isSysY) {
            const auto base = path.substr(0, path.size() - (isSpl ? 4 : 3));
            Module module;
            const auto target = mir::TargetRegistry::get().selectTarget();
            module.setTarget(target.get());

            const auto lang = isSpl ? FrontEndLang::Spl : FrontEndLang::SysY;
            {
                Driver driver{ path, lang, emitAST.get(), strictMode.get() };

                if(grammarCheck.get())
                    return EXIT_SUCCESS;

                if(emitAST.get()) {
                    const auto outputFilePath = getOutputPath(base + ".ast");
                    reportDebug() << "emitAST >> "sv << outputFilePath << std::endl;
                    std::ofstream out{ outputFilePath };
                    driver.dump(out);
                    return EXIT_SUCCESS;
                }

                driver.emit(module);
            }

            return runIRPipeline(module, base, path, lang);
        }
        if(endswith(path, ".ir"sv)) {
            Module module;
            const auto target = mir::TargetRegistry::get().selectTarget();
            module.setTarget(target.get());
            loadTAC(module, path);
            const auto base = path.substr(0, path.size() - 3);
            return runIRPipeline(module, base, path, FrontEndLang::Spl);
        }

        reportError() << "Unrecognized input"sv << std::endl;
        return EXIT_FAILURE;
    } catch(const std::exception& ex) {
        std::cerr << "Unexpected exception: "sv << ex.what() << std::endl;
    } catch(...) {
        std::cerr << "Unknown error"sv << std::endl;
    }
    return EXIT_FAILURE;
}

void initializeCMMC();
int main(int argc, char** argv) {
#ifdef CMMC_ENABLE_DETERMINISTIC
    initializeCMMC();
#endif
    auto& profiler = Profiler::get();
    const auto ret = mainImpl(argc, argv);
    if(ret == EXIT_SUCCESS) {
        profiler.printStatistics();
    }
    return ret;
}
