%{

/* Declarations section */
#include <stdio.h>
#include "parser.tab.hpp"
#include <iostream>
#include "hw3_output.hpp"
#include "attributes.hpp"

using namespace std;


%}

%option yylineno
%option noyywrap
digit   		([0-9])
letter  		([a-zA-Z])
whitespace		([ \t\n\r])
hex_digit       ({digit}|[a-fA-F])
printable       ([\x20\x21\x23-\x5b\x5d-\x7e]|\t)

%x COMM
%x STR
%x ESC

%%

int                                           { yylval.type = "int"; return INT; }
byte                                          { yylval.type = "byte"; return BYTE; }
b                                             return B;
bool                                          { yylval.type = "bool"; return BOOL; }
and                                           return AND;    
or                                            return OR;    
not                                           return NOT;    
true                                          return TRUE;
false                                         return FALSE;    
return                                        return RETURN;    
if                                            return IF;    
else                                          return ELSE;    
while                                         return WHILE;    
break                                         return BREAK;    
continue                                      return CONTINUE; 
;                                             return SC;    
\(                                            return LPAREN;    
\)                                            return RPAREN;    
\{                                            return LBRACE;    
\}                                            return RBRACE;    
=                                             return ASSIGN;    
[\<\>]=?                                      { yylval.op = yytext; return RELOP; }
==|!=                                         { yylval.op = yytext; return EQ_NEQ; }
[\+\-]                                        { yylval.op = yytext; return PLUS_MINUS; }
[\*\/]                                        { yylval.op = yytext; return MUL_DIV; }
\/\/                                          {BEGIN(COMM);}
<COMM>[^\n\r]*[\r|\n|\r\n]?                   {BEGIN(INITIAL); /*ignore*/}
{letter}({letter}|{digit})*                   { yylval.name = yytext; return ID; }
[1-9]{digit}*|0                               { yylval.val = stoi(yytext); return NUM; }
\"([^\n\r\"\\]|\\[rnt\"\\])+\"                { yylval.name = yytext; return STRING; }

{whitespace}			               	      {; /*ignore*/}
.	                                          {output::errorLex(yylineno); exit(0);}

%%
