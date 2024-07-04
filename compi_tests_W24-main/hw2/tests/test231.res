23: Exp -> NUM
26: Exp -> TRUE
20: Exp -> Exp BINOP Exp
17: Type -> BYTE
25: Exp -> STRING
32: Exp -> LPAREN Type RPAREN Exp
19: Exp -> LPAREN Exp RPAREN
19: Exp -> LPAREN Exp RPAREN
20: Exp -> Exp BINOP Exp
14: Statement -> CONTINUE SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
2: Statements -> Statement
4: Statement -> LBRACE Statements RBRACE
2: Statements -> Statement
23: Exp -> NUM
17: Type -> BYTE
27: Exp -> FALSE
32: Exp -> LPAREN Type RPAREN Exp
7: Statement -> ID ASSIGN Exp SC
10: Statement -> IF LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
13: Statement -> BREAK SC
3: Statements -> Statements Statement
17: Type -> BYTE
5: Statement -> Type ID SC
3: Statements -> Statements Statement
25: Exp -> STRING
27: Exp -> FALSE
20: Exp -> Exp BINOP Exp
7: Statement -> ID ASSIGN Exp SC
3: Statements -> Statements Statement
23: Exp -> NUM
line 73: syntax error
