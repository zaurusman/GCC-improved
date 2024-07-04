26: Exp -> TRUE
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
26: Exp -> TRUE
20: Exp -> Exp BINOP Exp
18: Type -> BOOL
25: Exp -> STRING
19: Exp -> LPAREN Exp RPAREN
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
32: Exp -> LPAREN Type RPAREN Exp
23: Exp -> NUM
30: Exp -> Exp OR Exp
19: Exp -> LPAREN Exp RPAREN
29: Exp -> Exp AND Exp
27: Exp -> FALSE
21: Exp -> ID
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
10: Statement -> IF LPAREN Exp RPAREN Statement
12: Statement -> WHILE LPAREN Exp RPAREN Statement
2: Statements -> Statement
16: Type -> INT
23: Exp -> NUM
25: Exp -> STRING
29: Exp -> Exp AND Exp
6: Statement -> Type ID ASSIGN Exp SC
3: Statements -> Statements Statement
25: Exp -> STRING
7: Statement -> ID ASSIGN Exp SC
3: Statements -> Statements Statement
24: Exp -> NUM B
21: Exp -> ID
line 81: syntax error
