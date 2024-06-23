9: Statement -> RETURN SC
2: Statements -> Statement
24: Exp -> NUM B
21: Exp -> ID
20: Exp -> Exp BINOP Exp
27: Exp -> FALSE
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
20: Exp -> Exp BINOP Exp
21: Exp -> ID
7: Statement -> ID ASSIGN Exp SC
16: Type -> INT
26: Exp -> TRUE
6: Statement -> Type ID ASSIGN Exp SC
11: Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement
3: Statements -> Statements Statement
13: Statement -> BREAK SC
3: Statements -> Statements Statement
13: Statement -> BREAK SC
2: Statements -> Statement
4: Statement -> LBRACE Statements RBRACE
3: Statements -> Statements Statement
1: Program -> Statements
line 67: syntax error
