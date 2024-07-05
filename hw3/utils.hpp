#include "hw3_output.hpp"
#include <std::string>
#include "attributes.hpp"
using namespace attributes;


extern int yylineno;

void binop(exp_ &e, exp_ &e1, exp_ &e2) {
     if( (e1.type != "int" && e1.type != "byte") || (e2.type != "int" && e2.type != "byte") ){
        errorMismatch(yylineno);
        exit(0);
     }
     if(e1.type == "int" || e2.type == "int") {
        e.type = "int";
     }else {
        e.type = "byte";
     }
}

void logic_not(exp_ &e, exp_ &e1) {
    if(e1.type != "bool") {
        errorMismatch(yylineno);
        exit(0);
    }
    e.type = "bool";
}


void logic(exp_ &e, exp_ &e1, exp_ &e2) {
    if(e1.type != "bool" || e2.type != "bool") {
        errorMismatch(yylineno);
        exit(0);
    }
    e.type = "bool";
}

