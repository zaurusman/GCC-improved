#ifndef __UTILS_H
#define __UTILS_H

#include "hw3_output.hpp"
#include <string>
#include "attributes.hpp"
#include "symbols.hpp"

using namespace output;
using namespace std;

extern int yylineno;
extern SymbolTable symtab;


void declaration(type_t t, id_ id) {
    if(symtab.lookUp(string(id.name, id.len)) != VOID_T){
        errorDef(yylineno, string(id.name, id.len));
        exit(0);
    }
    symtab.insert(string(id.name, id.len),t);
}

void assign(id_ id, exp_ e) {
    type_t t = symtab.lookUp(string(id.name, id.len));
    if( t == VOID_T){
        errorUndef(yylineno, string(id.name, id.len));
        exit(0);
    }
    if(t != e.type && !(t == INT_T && e.type == BYTE_T)) {
        errorMismatch(yylineno);
        exit(0);
    }
}


void ifbool(exp_ e) {
    if(e.type != BOOL_T) {
        errorMismatch(yylineno);
        exit(0);
    }
    symtab.makeTable();
}

void myBreak() {
    if(! symtab.inLoop()) {
        errorUnexpectedBreak(yylineno);
        exit(0);
    }
}

void myCont() {
    if(! symtab.inLoop()) {
        errorUnexpectedContinue(yylineno);
        exit(0);
    }
}

void numB(exp_ &e, int num) {
    if (num > 255) {
        errorByteTooLarge(yylineno, to_string(num));
        exit(0);
    }
    e.type = BYTE_T;
}

void expId(exp_ &e, id_ id) {
    type_t id_type = symtab.lookUp(string(id.name, id.len));
    if (id_type == VOID_T || id_type == FUNC_T) {
        errorUndef(yylineno,string(id.name, id.len));
        exit(0);
    }
    e.type = id_type;
}

void binop(exp_ &e, exp_ &e1, exp_ &e2) {
     if ( (e1.type != INT_T && e1.type != BYTE_T) || (e2.type != INT_T && e2.type != BYTE_T) ) {
        errorMismatch(yylineno);
        exit(0);
     }
     if (e1.type == INT_T || e2.type == INT_T) {
        e.type = INT_T;
     }else {
        e.type = BYTE_T;
     }
}

void logic_not(exp_ &e, exp_ &e1) {
    if (e1.type != BOOL_T) {
        errorMismatch(yylineno);
        exit(0);
    }
    e.type = BOOL_T;
}


void logic(exp_ &e, exp_ &e1, exp_ &e2) {
    if (e1.type != BOOL_T || e2.type != BOOL_T) {
        errorMismatch(yylineno);
        exit(0);
    }
    e.type = BOOL_T;
}

void relop(exp_ &e, exp_ &e1, exp_ &e2) {
     if ( (e1.type != INT_T && e1.type != BYTE_T) || (e2.type != INT_T && e2.type != BYTE_T) ) {
        errorMismatch(yylineno);
        exit(0);
     }
     e.type = BOOL_T;
}

void cast(exp_ &e, type_t &t, exp_ &e2) {
    if ( (t != INT_T && t != BYTE_T) || (e2.type != INT_T && e2.type != BYTE_T) ) {
        errorMismatch(yylineno);
        exit(0);
     }
     e.type = t;
}

void call(exp_ &r, id_ id,exp_ &arg) {
    string name = string(id.name, id.len);
    if (name == "print"){
        if(arg.type != STRING_T){
             errorPrototypeMismatch(yylineno,name,"STRING");
             exit(0);
        }
        r.type = VOID_T;

    }else if (name == "printi") {
        if(arg.type != INT_T && arg.type != BYTE_T){
             errorPrototypeMismatch(yylineno,name,"INT");
             exit(0);
        }
        r.type = VOID_T;
    }else if(name == "readi") {
        if(arg.type != INT_T && arg.type != BYTE_T){
             errorPrototypeMismatch(yylineno,name,"INT");
             exit(0);
        }
        r.type = INT_T;
    }else {
        errorUndefFunc(yylineno,name);
        exit(0);
    }

}


#endif