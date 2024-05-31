#include "tokens.hpp"
#include <iostream>
#include <vector>
#include <string>
using namespace std;

int main()
{
	vector<string> tokens = {"", "", "INT", "NUM", "ID"};
	int token;
	while(token = yylex()) {
		cout << yylineno << ' ' << tokens[token] << ' ' << yytext << endl;
	}
	return 0;
}