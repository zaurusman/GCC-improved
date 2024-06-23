21: Exp -> ID
27: Exp -> FALSE
28: Exp -> NOT Exp
20: Exp -> Exp BINOP Exp
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
2: Statements -> Statement
23: Exp -> NUM
9: Statement -> RETURN SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
line 9: syntax error
