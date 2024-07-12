#ifndef __ATTRIBUTES_H
#define __ATTRIBUTES_H

#include <string>

enum type_t {
    INT_T,
    BYTE_T,
    BOOL_T,
    STRING_T,
    VOID_T,
    FUNC_T
};

typedef struct {
        type_t type;
    } exp_;

typedef struct {
        char* name;
        int len;
    } id_;

typedef union {
    exp_ exp;
    int val;
    type_t type;
    id_ id;

} STYPE;

#define YYSTYPE STYPE // tells Bison to use STYPE as the stack type



#endif