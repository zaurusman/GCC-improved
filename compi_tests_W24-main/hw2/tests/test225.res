26: Exp -> TRUE
14: Statement -> CONTINUE SC
25: Exp -> STRING
24: Exp -> NUM B
31: Exp -> Exp RELOP Exp
7: Statement -> ID ASSIGN Exp SC
11: Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement
2: Statements -> Statement
14: Statement -> CONTINUE SC
3: Statements -> Statements Statement
26: Exp -> TRUE
21: Exp -> ID
17: Type -> BYTE
23: Exp -> NUM
6: Statement -> Type ID ASSIGN Exp SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
9: Statement -> RETURN SC
11: Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement
3: Statements -> Statements Statement
27: Exp -> FALSE
21: Exp -> ID
18: Type -> BOOL
26: Exp -> TRUE
32: Exp -> LPAREN Type RPAREN Exp
20: Exp -> Exp BINOP Exp
20: Exp -> Exp BINOP Exp
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
24: Exp -> NUM B
31: Exp -> Exp RELOP Exp
26: Exp -> TRUE
7: Statement -> ID ASSIGN Exp SC
10: Statement -> IF LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
1: Program -> Statements
line 48: syntax error
