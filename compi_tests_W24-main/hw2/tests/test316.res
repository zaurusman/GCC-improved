25: Exp -> STRING
23: Exp -> NUM
7: Statement -> ID ASSIGN Exp SC
10: Statement -> IF LPAREN Exp RPAREN Statement
2: Statements -> Statement
26: Exp -> TRUE
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
3: Statements -> Statements Statement
27: Exp -> FALSE
7: Statement -> ID ASSIGN Exp SC
3: Statements -> Statements Statement
13: Statement -> BREAK SC
3: Statements -> Statements Statement
1: Program -> Statements
line 16: syntax error
