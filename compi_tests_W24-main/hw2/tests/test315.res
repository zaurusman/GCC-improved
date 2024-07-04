17: Type -> BYTE
24: Exp -> NUM B
28: Exp -> NOT Exp
21: Exp -> ID
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
23: Exp -> NUM
20: Exp -> Exp BINOP Exp
24: Exp -> NUM B
31: Exp -> Exp RELOP Exp
19: Exp -> LPAREN Exp RPAREN
20: Exp -> Exp BINOP Exp
21: Exp -> ID
29: Exp -> Exp AND Exp
6: Statement -> Type ID ASSIGN Exp SC
2: Statements -> Statement
13: Statement -> BREAK SC
3: Statements -> Statements Statement
line 30: syntax error
