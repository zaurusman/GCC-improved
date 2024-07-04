25: Exp -> STRING
27: Exp -> FALSE
7: Statement -> ID ASSIGN Exp SC
2: Statements -> Statement
4: Statement -> LBRACE Statements RBRACE
10: Statement -> IF LPAREN Exp RPAREN Statement
2: Statements -> Statement
18: Type -> BOOL
26: Exp -> TRUE
24: Exp -> NUM B
25: Exp -> STRING
20: Exp -> Exp BINOP Exp
20: Exp -> Exp BINOP Exp
line 8: syntax error
