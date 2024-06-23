25: Exp -> STRING
25: Exp -> STRING
16: Type -> INT
21: Exp -> ID
32: Exp -> LPAREN Type RPAREN Exp
31: Exp -> Exp RELOP Exp
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
10: Statement -> IF LPAREN Exp RPAREN Statement
2: Statements -> Statement
line 9: syntax error
