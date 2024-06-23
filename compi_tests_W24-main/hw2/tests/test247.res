17: Type -> BYTE
5: Statement -> Type ID SC
2: Statements -> Statement
21: Exp -> ID
24: Exp -> NUM B
28: Exp -> NOT Exp
20: Exp -> Exp BINOP Exp
23: Exp -> NUM
17: Type -> BYTE
24: Exp -> NUM B
32: Exp -> LPAREN Type RPAREN Exp
27: Exp -> FALSE
20: Exp -> Exp BINOP Exp
23: Exp -> NUM
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
31: Exp -> Exp RELOP Exp
29: Exp -> Exp AND Exp
19: Exp -> LPAREN Exp RPAREN
31: Exp -> Exp RELOP Exp
25: Exp -> STRING
27: Exp -> FALSE
9: Statement -> RETURN SC
10: Statement -> IF LPAREN Exp RPAREN Statement
12: Statement -> WHILE LPAREN Exp RPAREN Statement
2: Statements -> Statement
4: Statement -> LBRACE Statements RBRACE
10: Statement -> IF LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
23: Exp -> NUM
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
3: Statements -> Statements Statement
1: Program -> Statements
line 73: syntax error
