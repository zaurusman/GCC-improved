25: Exp -> STRING
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
2: Statements -> Statement
23: Exp -> NUM
28: Exp -> NOT Exp
27: Exp -> FALSE
26: Exp -> TRUE
20: Exp -> Exp BINOP Exp
31: Exp -> Exp RELOP Exp
27: Exp -> FALSE
31: Exp -> Exp RELOP Exp
7: Statement -> ID ASSIGN Exp SC
3: Statements -> Statements Statement
21: Exp -> ID
23: Exp -> NUM
21: Exp -> ID
20: Exp -> Exp BINOP Exp
20: Exp -> Exp BINOP Exp
26: Exp -> TRUE
31: Exp -> Exp RELOP Exp
23: Exp -> NUM
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
26: Exp -> TRUE
20: Exp -> Exp BINOP Exp
31: Exp -> Exp RELOP Exp
9: Statement -> RETURN SC
10: Statement -> IF LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
25: Exp -> STRING
28: Exp -> NOT Exp
18: Type -> BOOL
23: Exp -> NUM
32: Exp -> LPAREN Type RPAREN Exp
20: Exp -> Exp BINOP Exp
23: Exp -> NUM
20: Exp -> Exp BINOP Exp
line 89: syntax error
