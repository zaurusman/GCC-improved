%{

/* Declarations section */
#include <stdio.h>
#include "tokens.hpp"
#include <iostream>
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
[\<\>]=?|==|!=                                return RELOP;    
[\+\-\*\/]                                    return BINOP;    
\/\/                                          {BEGIN(COMM); return COMMENT;}
<COMM>[^\n\r]*[\n\r]                          {BEGIN(INITIAL); /*ignore*/}
{letter}({letter}|{digit})*                   return ID;
[1-9]{digit}*|0                               return NUM;

\"                                            {BEGIN(STR); return STRING_START;}
<STR>{printable}*                             return STRING;
<STR>\\                                       BEGIN(ESC); 
<ESC>[nrt0"\\]|(x{hex_digit}{2})              {BEGIN(STR); return ESCAPE;}
<ESC>.|(x[^"\n]{1,2})                         {cout << "Error undefined escape sequence " << yytext << endl; exit(0); //maybe without \n}
<STR>\"                                       {BEGIN(INITIAL); return STRING_END;}
<STR>.|\n                                     {cout << "Error unclosed string\n"; exit(0);}

{whitespace}			               	      {; /*ignore*/}
.	                                          {cout << "Error " << yytext << endl; exit(0);}

%%
