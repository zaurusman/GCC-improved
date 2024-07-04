25: Exp -> STRING
24: Exp -> NUM B
20: Exp -> Exp BINOP Exp
19: Exp -> LPAREN Exp RPAREN
24: Exp -> NUM B
24: Exp -> NUM B
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
2: Statements -> Statement
4: Statement -> LBRACE Statements RBRACE
10: Statement -> IF LPAREN Exp RPAREN Statement
10: Statement -> IF LPAREN Exp RPAREN Statement
2: Statements -> Statement
14: Statement -> CONTINUE SC
2: Statements -> Statement
4: Statement -> LBRACE Statements RBRACE
3: Statements -> Statements Statement
line 22: syntax error
