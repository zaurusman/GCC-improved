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
	string str;
	bool str_open = false;

	while(token = yylex()) {
		if (token == STRING_START) {
			str.clear();
			str_open = true;
		}
		else if (token == STRING) {
			str += yytext;
		}
		else if (token == STRING_END) {
			cout << yylineno << ' ' << tokens[STRING] << ' ' << str << endl;
			str_open = false;
		}
		else if (token == ESCAPE) {
			switch (*yytext) {
				case 'n': str += '\n'; break;
				case 'r': str += '\r'; break;
				case 't': str += '\t'; break;
				case '0': str += '\0'; break;
				case '"': str += '\"'; break;
				case '\\': str += '\\'; break;
				case 'x': {
					string s{yytext+1};
					char hex = static_cast<char>(stoi(s, nullptr, 16));
					if (hex >= '\x00' && hex <= '\x7F') {
						str += hex;
					}
					else {
						cout << "Error undefined escape sequence " << yytext << endl; exit(0);
					}
					break;
				}
				default: cout << "Error undefined escape sequence " << yytext << endl; exit(0);
			}
		}
		else {
			cout << yylineno << ' ' << tokens[token] << ' ' << yytext << endl;
		}
	}
	if (str_open) {
		cout << "Error unclosed string\n";
		exit(0);
	}
	return 0;
}