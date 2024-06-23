25: Exp -> STRING
7: Statement -> ID ASSIGN Exp SC
2: Statements -> Statement
27: Exp -> FALSE
26: Exp -> TRUE
7: Statement -> ID ASSIGN Exp SC
10: Statement -> IF LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
27: Exp -> FALSE
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
3: Statements -> Statements Statement
9: Statement -> RETURN SC
2: Statements -> Statement
13: Statement -> BREAK SC
3: Statements -> Statements Statement
4: Statement -> LBRACE Statements RBRACE
3: Statements -> Statements Statement
21: Exp -> ID
21: Exp -> ID
19: Exp -> LPAREN Exp RPAREN
31: Exp -> Exp RELOP Exp
24: Exp -> NUM B
31: Exp -> Exp RELOP Exp
23: Exp -> NUM
28: Exp -> NOT Exp
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
line 51: syntax error
