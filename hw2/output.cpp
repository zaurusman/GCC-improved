#include <iostream>
#include "output.hpp"
#include <sstream>

const std::string output::rules[] = {
    "Program -> Statements",
    "Statements -> Statement",
    "Statements -> Statements Statement",
    "Statement -> LBRACE Statements RBRACE",
    "Statement -> Type ID SC",
    "Statement -> Type ID ASSIGN Exp SC",
    "Statement -> ID ASSIGN Exp SC",
    "Statement -> Call SC",
    "Statement -> RETURN SC",
    "Statement -> IF LPAREN Exp RPAREN Statement",
    "Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement",
    "Statement -> WHILE LPAREN Exp RPAREN Statement",
    "Statement -> BREAK SC",
    "Statement -> CONTINUE SC",
    "Call -> ID LPAREN Exp RPAREN",
    "Type -> INT",
    "Type -> BYTE",
    "Type -> BOOL",
    "Exp -> LPAREN Exp RPAREN",
    "Exp -> Exp BINOP Exp",
    "Exp -> ID",
    "Exp -> Call",
    "Exp -> NUM",
    "Exp -> NUM B",
    "Exp -> STRING",
    "Exp -> TRUE",
    "Exp -> FALSE",
    "Exp -> NOT Exp",
    "Exp -> Exp AND Exp",
    "Exp -> Exp OR Exp",
    "Exp -> Exp RELOP Exp",
    "Exp -> LPAREN Type RPAREN Exp"
};

void output::printProductionRule(const int ruleno) {
    std::cout << ruleno << ": " << output::rules[ruleno-1] << "\n";
}

void output::errorLex(const int lineno) {
    std::cout << "line " << lineno << ": lexical error\n";
}

void output::errorSyn(const int lineno) {
    std::cout << "line " << lineno << ": syntax error\n";
}
