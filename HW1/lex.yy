%{

/* Declarations section */
#include <stdio.h>
#include "tokens.hpp"

%}

%option yylineno
%option noyywrap
digit   		([0-9])
letter  		([a-zA-Z])
whitespace		([\t\n ])

%%

int                         {return INT;  }
{digit}+                    {return BYTE; }
{letter}+                   {return B;    }
{whitespace}				;
.		printf("Lex doesn't know what that is!\n");

%%

