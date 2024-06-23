26: Exp -> TRUE
27: Exp -> FALSE
20: Exp -> Exp BINOP Exp
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
2: Statements -> Statement
26: Exp -> TRUE
7: Statement -> ID ASSIGN Exp SC
3: Statements -> Statements Statement
14: Statement -> CONTINUE SC
2: Statements -> Statement
4: Statement -> LBRACE Statements RBRACE
3: Statements -> Statements Statement
line 12: lexical error
