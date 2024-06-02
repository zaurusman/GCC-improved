%{

/* Declarations section */
#include <stdio.h>
#include "tokens.hpp"
#include <iostream>
#include <string>
using namespace std;
void escape();

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
%x ESCAPE

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

\"                                            {BEGIN(STR); return STRING;}
<STR>{printable}*                             cout << yytext;
<STR>\\                                       BEGIN(ESCAPE); 
<ESCAPE>[nrt0"\\]|(x{hex_digit}{2})           {BEGIN(STR); escape();}
<ESCAPE>.|(x..)                               {cout << "Error undefined escape sequence " << yytext << endl; exit(0);}
<STR>\"                                       {BEGIN(INITIAL); cout << endl;}
<STR>.|\n                                     {cout << "Error unclosed string\n"; exit(0);}

{whitespace}			               	      {; /*ignore*/}
.	                                          {cout << "Error " << yytext << endl; exit(0);}

%%

void escape() {
    switch (*yytext) {
        case 'n': cout << '\n'; break;
        case 'r': cout << '\r'; break;
        case 't': cout << '\t'; break;
        case '0': cout << '\0'; break;
        case '"': cout << '\"'; break;
        case '\\': cout << '\\'; break;
        case 'x': {
            string s{yytext+1};
            char hex = static_cast<char>(std::stoi(s, nullptr, 16));
            if ((hex > '\x20' && hex < '\x7e') || hex == '\t') {
                cout << hex;
            }
            else {
                cout << "Error undefined escape sequence " << yytext << endl; exit(0);
            }
            break;
        }
        default: cout << "Error undefined escape sequence " << yytext << endl; exit(0);
    }

}