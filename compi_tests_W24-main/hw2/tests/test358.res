16: Type -> INT
21: Exp -> ID
32: Exp -> LPAREN Type RPAREN Exp
28: Exp -> NOT Exp
7: Statement -> ID ASSIGN Exp SC
2: Statements -> Statement
26: Exp -> TRUE
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
3: Statements -> Statements Statement
line 40: syntax error
