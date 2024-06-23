26: Exp -> TRUE
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
2: Statements -> Statement
17: Type -> BYTE
21: Exp -> ID
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
6: Statement -> Type ID ASSIGN Exp SC
3: Statements -> Statements Statement
18: Type -> BOOL
27: Exp -> FALSE
21: Exp -> ID
24: Exp -> NUM B
20: Exp -> Exp BINOP Exp
31: Exp -> Exp RELOP Exp
6: Statement -> Type ID ASSIGN Exp SC
3: Statements -> Statements Statement
17: Type -> BYTE
26: Exp -> TRUE
32: Exp -> LPAREN Type RPAREN Exp
25: Exp -> STRING
25: Exp -> STRING
20: Exp -> Exp BINOP Exp
19: Exp -> LPAREN Exp RPAREN
19: Exp -> LPAREN Exp RPAREN
24: Exp -> NUM B
27: Exp -> FALSE
29: Exp -> Exp AND Exp
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
20: Exp -> Exp BINOP Exp
30: Exp -> Exp OR Exp
line 20: syntax error
