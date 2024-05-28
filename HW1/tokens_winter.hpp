#ifndef TOKENS_HPP_
#define TOKENS_HPP_
  enum tokentype
  {
    VOID = 1,
    INT = 2,
    BYTE = 3,
    B = 4,
    BOOL = 5,
    AND = 6,
    OR = 7,
    NOT = 8,
    TRUE = 9,
    FALSE = 10,
    RETURN = 11,
    IF = 12,
    ELSE = 13,
    WHILE = 14,
    BREAK = 15,
    CONTINUE = 16, 
    SC = 17,
    LPAREN = 18,
    RPAREN = 19,
    LBRACE = 20,
    RBRACE = 21,
    ASSIGN = 22,
    RELOP = 23,
    BINOP = 24,
    COMMENT = 25,
    ID = 26,
    NUM = 27,
    STRING = 28
  };
  extern int yylineno;
  extern char* yytext;
  extern size_t yyleng;
  extern int yylex();
#endif /* TOKENS_HPP_ */