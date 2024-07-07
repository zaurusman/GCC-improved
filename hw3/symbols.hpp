#ifndef __SYMBOLS_H
#define __SYMBOLS_H

#include "hw3_output.hpp"
#include <string>
#include "attributes.hpp"
#include <map>
#include <stack>
#include <vector>

using namespace output;
using namespace std;


class Symbol {
public:
    string name;
    type_t type;
    int offset;
    type_t arg;

};

class SymbolTable {

private:
    unordered_map<string,Symbol> symbol_table;
    stack <vector<Symbol>> symbols_stack;
    stack<int> offsets_stack;
    unsigned long long loop_counter;

public:

    void startLoop() {
        loop_counter++;
    }

    void endLoop() {
        loop_counter--;
    }

    bool inLoop() {
        return loop_counter > 0;
    }

    void makeTable() {
        symbols_stack.push(vector<Symbol>());
        if(offsets_stack.empty()){
            offsets_stack.push(0);
        } else
            offsets_stack.push(offsets_stack.top());
    }

    void insert(string name,type_t type) {
        Symbol sym = Symbol(name,type, offsets_stack.top());
        symbols_stack.top().push_back(sym);
        symbol_table[name] = sym;
        if(type != FUNC_T) {
            offsets_stack.top()++;
        }
    }

    void init() {
        makeTable();
        insert("print",FUNC_T);
        insert("printi",FUNC_T);
        insert("readi",FUNC_T);
        loop_counter = 0;
    }

    bool myEndScope() {
        if(symbols_stack.empty()) {
            return false;
        }
        endScope();
        vector<Symbol> scope = symbols_stack.top();
        symbols_stack.pop();
        offsets_stack.pop();
        for(auto s : scope) {
            symbol_table.erase(s.name);
            switch (s.type) {
                case FUNC_T: {
                    if(s.name == "print"){
                        printID(s.name,s.offset, makeFunctionType("STRING","VOID"));
                    }else if(s.name == "printi"){
                        printID(s.name,s.offset, makeFunctionType("INT","VOID"));
                    }else if(s.name == "readi"){
                        printID(s.name,s.offset, makeFunctionType("INT","INT"));
                    }//should not get here
                    break;
                }
                case INT_T:
                    printID(s.name,s.offset,"INT");
                    break;
                case BYTE_T:
                    printID(s.name,s.offset,"BYTE");
                    break;
                case BOOL:
                    printID(s.name,s.offset,"BOOL");
                    break;
                //should not get here
            }
        }
        return true;
    }

    type_t lookUp(string name) {
        if(symbol_table.find(name) == symbols_table.end()){
            return VOID_T;
        }
        return symbol_table[name].type;
    }
};



#endif