%{

/* Declarations section */
#include <stdio.h>
#include "parser.tab.hpp"
#include <iostream>
#include "output.hpp"
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

int                                           return INT;    
byte                                          return BYTE;   
b                                             return B;  
bool                                          return BOOL;
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
[\<\>]=?                                      return RELOP; 
==|!=                                         return EQ_NEQ;   
[\+\-]                                        return PLUS_MINUS;
[\*\/]                                        return MUL_DIV;    
\/\/                                          {BEGIN(COMM);}
<COMM>[^\n\r]*[\r|\n|\r\n]?                   {BEGIN(INITIAL); /*ignore*/}
{letter}({letter}|{digit})*                   return ID;
[1-9]{digit}*|0                               return NUM;
\"([^\n\r\"\\]|\\[rnt\"\\])+\"                  return STRING;

{whitespace}			               	      {; /*ignore*/}
.	                                          {output::errorLex(yylineno); exit(0);}

%%
