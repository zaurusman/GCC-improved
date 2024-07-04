16: Type -> INT
21: Exp -> ID
32: Exp -> LPAREN Type RPAREN Exp
14: Statement -> CONTINUE SC
10: Statement -> IF LPAREN Exp RPAREN Statement
2: Statements -> Statement
23: Exp -> NUM
21: Exp -> ID
30: Exp -> Exp OR Exp
14: Statement -> CONTINUE SC
2: Statements -> Statement
27: Exp -> FALSE
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
3: Statements -> Statements Statement
line 37: syntax error
