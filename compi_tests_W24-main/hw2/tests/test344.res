21: Exp -> ID
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
25: Exp -> STRING
20: Exp -> Exp BINOP Exp
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
2: Statements -> Statement
9: Statement -> RETURN SC
3: Statements -> Statements Statement
line 27: syntax error
