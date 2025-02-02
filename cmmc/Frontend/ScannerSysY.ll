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
%option noyywrap batch
%{
#include <limits>
#include <cmmc/Frontend/Driver.hpp>
#include <iostream>
%}
%{
  // Code run each time a pattern is matched.
  # define YY_USER_ACTION  loc.columns (yyleng);
%}

TYPE void|int|char|float|double
FIXED_WIDTH_INTEGER_TYPE u?int(8|16|32|64)_t

%%
%{
  // A handy shortcut to the location held by the driver.
  yy::location& loc = driver.location();
  // Code run each time yylex is called.
  loc.step ();

  auto emitType = [&]{
    String val = String::get(yytext); return Parser::make_TYPE(val, {CMMC_RECORD(TYPE, val), loc});
  };

  auto emitInteger = [&] (int radix) {
    char* end;
    uintmax_t val = strtoull(yytext, &end, radix);
    bool base10 = radix == 10;
    bool hasU = false;
    bool hasL = false;
    while(*end) {
      if(*end == 'U')
        hasU = true;
      if(*end == 'L')
        hasL = true;
      ++end;
    }

    // Please refer to https://zh.cppreference.com/w/c/language/integer_constant
    bool isSigned = true;
    uint32_t width = 0U;
    #define CMMC_TRY_INTEGER(TYPE) if(val <= static_cast<uintmax_t>(std::numeric_limits<TYPE>::max()))  width = sizeof(TYPE) * 8U, isSigned = std::is_signed_v<TYPE>
    if(hasU && hasL) {
      isSigned = false;
      width = 64U;
    } else if(hasU) {
      CMMC_TRY_INTEGER(uint32_t);
      else CMMC_TRY_INTEGER(uint64_t);
    } else if(hasL) {
      CMMC_TRY_INTEGER(int64_t);
      else if(!base10) {
        CMMC_TRY_INTEGER(uint64_t);
      }
    } else {
      if(base10) {
        CMMC_TRY_INTEGER(int32_t);
        else CMMC_TRY_INTEGER(int64_t);
      } else {
        CMMC_TRY_INTEGER(int32_t);
        else CMMC_TRY_INTEGER(uint32_t);
        else CMMC_TRY_INTEGER(int64_t);
        else CMMC_TRY_INTEGER(uint64_t);
      }
    }
    #undef CMMC_TRY_INTEGER

    if(width == 0U) {
      CMMC_INTEGER_OUT_OF_RANGE_ERROR(yytext);
    }

    // std::cerr << static_cast<intmax_t>(val) << ' ' << width << ' ' << isSigned << std::endl;

    return Parser::make_INT(IntegerStorage{val, width, isSigned}, {CMMC_RECORD(INT, val), loc});
  };

  auto emitFp = [&] {
    char* end;
    double val = strtod(yytext, &end);
    return Parser::make_FLOAT(FloatingPointStorage{val, (*end == 'f') || (*end == 'F')}, {CMMC_RECORD(FLOAT, val), loc});
  };
%}
[ \t]+ loc.step ();
[\n]+ loc.lines (yyleng); loc.step ();
[\r]+ loc.step ();

"//" { 
  char c;
  // ignore the following chars until seeing a newline character
  do c = yyinput();
  while(c != '\n' && c != '\0'); 
  // put the newline character back to the input buffer
  if(c == '\n')
    unput(c); 
}

"/*" {
  char c1 = yyinput();
  auto consume = [&](char ch) {
    if(ch == '\n')
      loc.lines(1);
    else 
      loc.columns(1);
  };
  while(true) {
    if(c1 == '\0') {
      CMMC_COMMENT_ERROR();
      break;
    }
    consume(c1);
    char c2 = yyinput();
    if(c1 == '*' && c2 == '/') {
      consume(c2);
      break;
    }
    c1 = c2;
  }
}

"if" { CMMC_TERMINAL(IF); }
"else" { CMMC_TERMINAL(ELSE); }
"while" { CMMC_TERMINAL(WHILE); }
"do" { CMMC_TERMINAL(DO); }
"for" { CMMC_TERMINAL(FOR); }
"continue" { CMMC_TERMINAL(CONTINUE); }
"break" { CMMC_TERMINAL(BREAK); }
"return" { CMMC_TERMINAL(RETURN); }
"goto" { CMMC_TERMINAL(GOTO); }
"switch" { CMMC_TERMINAL(SWITCH); }
"case" { CMMC_TERMINAL(CASE); }

"struct" { CMMC_TERMINAL(STRUCT); }
"union" { CMMC_TERMINAL(UNION); }

"const" { CMMC_TERMINAL(CONST); }

"+=" { CMMC_TERMINAL(PLUS_ASSIGN); }
"-=" { CMMC_TERMINAL(MINUS_ASSIGN); }
"*=" { CMMC_TERMINAL(MUL_ASSIGN); }
"/=" { CMMC_TERMINAL(DIV_ASSIGN); }
"%=" { CMMC_TERMINAL(REM_ASSIGN); }
"&=" { CMMC_TERMINAL(BAND_ASSIGN); }
"|=" { CMMC_TERMINAL(BOR_ASSIGN); }
"^=" { CMMC_TERMINAL(XOR_ASSIGN); }
"<<=" { CMMC_TERMINAL(SHL_ASSIGN); }
">>=" { CMMC_TERMINAL(SHR_ASSIGN); }
"++" { CMMC_TERMINAL(INC); }
"--" { CMMC_TERMINAL(DEC); }
"+" { CMMC_TERMINAL(PLUS); }
"-" { CMMC_TERMINAL(MINUS); }
"*" { CMMC_TERMINAL(MUL); }
"/" { CMMC_TERMINAL(DIV); }
"%" { CMMC_TERMINAL(REM); }
"!" { CMMC_TERMINAL(NOT); }
"~" { CMMC_TERMINAL(BNOT); }
"&&" { CMMC_TERMINAL(AND); }
"&" { CMMC_TERMINAL(BAND); }
"^" { CMMC_TERMINAL(XOR); }
"<<" { CMMC_TERMINAL(SHL); }
">>" { CMMC_TERMINAL(SHR); }
"||" { CMMC_TERMINAL(OR); }
"|" { CMMC_TERMINAL(BOR); }
"<" { CMMC_TERMINAL(LT); }
">" { CMMC_TERMINAL(GT); }
"<=" { CMMC_TERMINAL(LE); }
">=" { CMMC_TERMINAL(GE); }
"==" { CMMC_TERMINAL(EQ); }
"!=" { CMMC_TERMINAL(NE); }
"=" { CMMC_TERMINAL(ASSIGN); }

"." { CMMC_TERMINAL(DOT); }
";" { CMMC_TERMINAL(SEMI); }
"," { CMMC_TERMINAL(COMMA); }
"#" { CMMC_TERMINAL(SHARP); }
"?" { CMMC_TERMINAL(QUEST); }
":" { CMMC_TERMINAL(COLON); }

"(" { CMMC_TERMINAL(LP); }
")" { CMMC_TERMINAL(RP); }
"[" { CMMC_TERMINAL(LB); }
"]" { CMMC_TERMINAL(RB); }
"{" { CMMC_TERMINAL(LC); }
"}" { CMMC_TERMINAL(RC); }

{FIXED_WIDTH_INTEGER_TYPE} { return emitType(); }
{TYPE} { return emitType(); }

"0"[xX][0-9A-Fa-f]+U?L?L? { return emitInteger(16); }
(0|([1-9][0-9]*))U?L?L? { return emitInteger(10); }
"0"[1-7][0-7]*U?L?L? { return emitInteger(8); }
([0-9]+)?"."[0-9]+([eE][+-]?[0-9]+)?(f|F)? { return emitFp(); }
([0-9]+)([eE][+-]?[0-9]+)(f|F)? { return emitFp(); }
([0-9]+)"."(f|F)? { return emitFp(); }
0[xX][0-9a-fA-F]*"."[0-9a-fA-F]*[pP][+-]?[0-9]+(f|F)? { return emitFp(); }
[a-zA-Z_][a-zA-Z_0-9]* { String val = String::get(yytext); return Parser::make_ID(val, {CMMC_RECORD(ID, val), loc}); }
"'"."'" { char ch = yytext[1]; return Parser::make_CHAR(ch, {CMMC_RECORD(CHAR, ch), loc}); }
"\"".*"\"" { std::string_view text{yytext}; String str = String::get(text.substr(1, text.size()-2)); return Parser::make_STRING(str, {CMMC_RECORD(STRING, str), loc}); }
"'\\x"[0-9a-fA-F][0-9a-fA-F]"'" { char ch = strtol(yytext+3, NULL, 16); return Parser::make_CHAR(ch, {CMMC_RECORD(CHAR, ch), loc}); }

<<EOF>> return Parser::make_END({0,loc});

. { CMMC_LEXER_ERROR(yytext); }
%%
