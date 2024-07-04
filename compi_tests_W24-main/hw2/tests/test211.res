21: Exp -> ID
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
18: Type -> BOOL
21: Exp -> ID
32: Exp -> LPAREN Type RPAREN Exp
27: Exp -> FALSE
20: Exp -> Exp BINOP Exp
20: Exp -> Exp BINOP Exp
14: Statement -> CONTINUE SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
2: Statements -> Statement
27: Exp -> FALSE
27: Exp -> FALSE
7: Statement -> ID ASSIGN Exp SC
10: Statement -> IF LPAREN Exp RPAREN Statement
2: Statements -> Statement
21: Exp -> ID
7: Statement -> ID ASSIGN Exp SC
3: Statements -> Statements Statement
4: Statement -> LBRACE Statements RBRACE
3: Statements -> Statements Statement
25: Exp -> STRING
7: Statement -> ID ASSIGN Exp SC
3: Statements -> Statements Statement
1: Program -> Statements
line 47: syntax error
