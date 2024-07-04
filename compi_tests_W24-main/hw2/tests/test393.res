14: Statement -> CONTINUE SC
2: Statements -> Statement
24: Exp -> NUM B
19: Exp -> LPAREN Exp RPAREN
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
3: Statements -> Statements Statement
24: Exp -> NUM B
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
3: Statements -> Statements Statement
18: Type -> BOOL
5: Statement -> Type ID SC
3: Statements -> Statements Statement
27: Exp -> FALSE
7: Statement -> ID ASSIGN Exp SC
3: Statements -> Statements Statement
21: Exp -> ID
13: Statement -> BREAK SC
13: Statement -> BREAK SC
11: Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement
3: Statements -> Statements Statement
24: Exp -> NUM B
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
3: Statements -> Statements Statement
24: Exp -> NUM B
19: Exp -> LPAREN Exp RPAREN
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
27: Exp -> FALSE
18: Type -> BOOL
26: Exp -> TRUE
32: Exp -> LPAREN Type RPAREN Exp
20: Exp -> Exp BINOP Exp
24: Exp -> NUM B
20: Exp -> Exp BINOP Exp
25: Exp -> STRING
31: Exp -> Exp RELOP Exp
line 78: syntax error
