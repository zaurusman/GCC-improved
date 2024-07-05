#ifndef __ATTRIBUTES_H
#define __ATTRIBUTES_H

#include <std::string>
typedef struct {
        std::string type;
    } exp_;
typedef union {
    exp_ exp;
    int val;
    std::string type;
    std::string name;
    std::string op;

}STYPE;
#define YYSTYPE STYPE // tells bison to use stype as the stack type



#endif