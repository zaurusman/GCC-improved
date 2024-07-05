#ifndef _236360_3_
#define _236360_3_

#include <vector>
#include <string>
using namespace std;

namespace output
{
    void endScope();
    void printID(const string &id, int offset, const string &type);
    string makeFunctionType(const string& argType, const string& retType);

    void errorLex(int lineno);
    void errorSyn(int lineno);
    void errorUndef(int lineno, const string &id);
    void errorDef(int lineno, const string &id);
    void errorUndefFunc(int lineno, const string &id);
    void errorMismatch(int lineno);
    void errorPrototypeMismatch(int lineno, const string &id, const string &type);
    void errorUnexpectedBreak(int lineno);
    void errorUnexpectedContinue(int lineno);
    void errorByteTooLarge(int lineno, const string &value);
}

#endif