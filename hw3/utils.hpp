#ifndef __UTILS_H
#define __UTILS_H

#include "hw3_output.hpp"
#include <string>
#include "attributes.hpp"
using namespace output;
using namespace std;


extern int yylineno;

void numB(exp_ &e, int num) {
    if (num > 255) {
        errorByteTooLarge(yylineno, to_string(num));
        exit(0);
    }
    e.type = BYTE_T;
}

void binop(exp_ &e, exp_ &e1, exp_ &e2) {
     if( (e1.type != INT_T && e1.type != BYTE_T) || (e2.type != INT_T && e2.type != BYTE_T) ) {
        errorMismatch(yylineno);
        exit(0);
     }
     if(e1.type == INT_T || e2.type == INT_T) {
        e.type = INT_T;
     }else {
        e.type = BYTE_T;
     }
}

void logic_not(exp_ &e, exp_ &e1) {
    if(e1.type != BOOL_T) {
        errorMismatch(yylineno);
        exit(0);
    }
    e.type = BOOL_T;
}


void logic(exp_ &e, exp_ &e1, exp_ &e2) {
    if(e1.type != BOOL_T || e2.type != BOOL_T) {
        errorMismatch(yylineno);
        exit(0);
    }
    e.type = BOOL_T;
}

#endif