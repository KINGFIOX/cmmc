BUILD_TYPE = Release
OPTFLAGS = -O3 -flto -DNDEBUG
DBGFLAGS = -fsanitize=address -O0 -fno-omit-frame-pointer -ggdb
ADDFLAGS = 

ifeq ($(BUILD_TYPE), Debug)
ADDFLAGS += $(DBGFLAGS)
else
ADDFLAGS += $(OPTFLAGS)
endif

CXX = g++
LEX = flex
YACC = bison

DIR_BUILD := ./build
BIN := ./bin/splc

CXXFLAGS = -std=c++17 -g $(ADDFLAGS) -I $(abspath ./) -Wall -Werror -MD
LDFLAGS = $(ADDFLAGS)

CXXSRCS := $(wildcard cmmc/**/*.cpp) $(wildcard cmmc/Transforms/**/*.cpp) $(wildcard cmmc/Target/**/*.cpp)

OBJS = $(CXXSRCS:%.cpp=$(DIR_BUILD)/objs/%.o)

.PHONY: all
all: splc

$(DIR_BUILD)/generated/Spl/ParserImpl.hpp: cmmc/Frontend/ParserSpl.yy
	mkdir -p $(dir $@)
	$(YACC) -o $@ -Wall --language=c++ --defines=$(DIR_BUILD)/generated/Spl/ParserDecl.hpp $<

$(DIR_BUILD)/generated/Spl/ScannerImpl.hpp: cmmc/Frontend/ScannerSpl.ll $(DIR_BUILD)/generated/Spl/ParserImpl.hpp
	mkdir -p $(dir $@)
	$(LEX) -o $@ -P Spl --header-file=$(DIR_BUILD)/generated/Spl/ScannerDecl.hpp $<

$(DIR_BUILD)/objs/SplSupport.o: cmmc/Frontend/Support/SplSupport.cpp $(DIR_BUILD)/generated/Spl/ScannerImpl.hpp $(DIR_BUILD)/generated/Spl/ParserImpl.hpp
	mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) -I $(abspath $(DIR_BUILD)/generated/) -c -o $@ cmmc/Frontend/Support/SplSupport.cpp

$(DIR_BUILD)/generated/SysY/ParserImpl.hpp: cmmc/Frontend/ParserSysY.yy
	mkdir -p $(dir $@)
	$(YACC) -o $@ -Wall --language=c++ --defines=$(DIR_BUILD)/generated/SysY/ParserDecl.hpp $<

$(DIR_BUILD)/generated/SysY/ScannerImpl.hpp: cmmc/Frontend/ScannerSysY.ll $(DIR_BUILD)/generated/SysY/ParserImpl.hpp
	mkdir -p $(dir $@)
	$(LEX) -o $@ -P SysY --header-file=$(DIR_BUILD)/generated/SysY/ScannerDecl.hpp $<

$(DIR_BUILD)/objs/SysYSupport.o: cmmc/Frontend/Support/SysYSupport.cpp $(DIR_BUILD)/generated/SysY/ScannerImpl.hpp $(DIR_BUILD)/generated/SysY/ParserImpl.hpp
	mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) -I $(abspath $(DIR_BUILD)/generated/) -c -o $@ cmmc/Frontend/Support/SysYSupport.cpp

$(DIR_BUILD)/objs/%.o: %.cpp
	mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) -c -o $@ $<

$(BIN): $(OBJS) $(DIR_BUILD)/objs/SplSupport.o $(DIR_BUILD)/objs/SysYSupport.o
	mkdir -p $(dir $@)
	$(CXX) $(LDFLAGS) -o $@ $^

.PHONY: clean bear debug splc
clean:
	rm -rf *~ $(DIR_BUILD) bin
bear2: clean # make clangd happy
	mkdir -p $(DIR_BUILD)
	bear -o $(DIR_BUILD)/compile_commands.json make
bear3: clean # make clangd happy
	mkdir -p $(DIR_BUILD)
	bear --output $(DIR_BUILD)/compile_commands.json -- make
-include $(OBJS:.o=.d)
debug: $(BIN)
	gdb $(BIN)
splc: $(BIN)

.PHONY: test
test: splc
	python3 ./tests/test_driver.py $(BIN) ./tests
