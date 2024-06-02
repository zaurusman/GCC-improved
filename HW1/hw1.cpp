#include "tokens.hpp"
#include <iostream>
#include <vector>
#include <string>
using namespace std;

int main()
{
	vector<string> tokens = {"", "",
        "INT",
        "BYTE",
        "B",
        "BOOL",
        "AND",
        "OR",
        "NOT",
        "TRUE",
        "FALSE",
        "RETURN",
        "IF",
        "ELSE",
        "WHILE",
        "BREAK",
        "CONTINUE",
        "SC",
        "LPAREN",
        "RPAREN",
        "LBRACE",
        "RBRACE",
        "ASSIGN",
        "RELOP",
        "BINOP",
        "COMMENT",
        "ID",
        "NUM",
        "STRING"
    };
	int token;
	while(token = yylex()) {
		if (token == STRING) {
			cout << yylineno << ' ' << tokens[token] << ' ';
		}
		else {
			cout << yylineno << ' ' << tokens[token] << ' ' << yytext << endl;
		}
	}
	return 0;
}