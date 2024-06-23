21: Exp -> ID
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
2: Statements -> Statement
24: Exp -> NUM B
25: Exp -> STRING
28: Exp -> NOT Exp
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
20: Exp -> Exp BINOP Exp
25: Exp -> STRING
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
18: Type -> BOOL
23: Exp -> NUM
6: Statement -> Type ID ASSIGN Exp SC
11: Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement
3: Statements -> Statements Statement
26: Exp -> TRUE
21: Exp -> ID
7: Statement -> ID ASSIGN Exp SC
10: Statement -> IF LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
4: Statement -> LBRACE Statements RBRACE
2: Statements -> Statement
16: Type -> INT
5: Statement -> Type ID SC
2: Statements -> Statement
21: Exp -> ID
7: Statement -> ID ASSIGN Exp SC
3: Statements -> Statements Statement
4: Statement -> LBRACE Statements RBRACE
3: Statements -> Statements Statement
23: Exp -> NUM
21: Exp -> ID
28: Exp -> NOT Exp
20: Exp -> Exp BINOP Exp
25: Exp -> STRING
31: Exp -> Exp RELOP Exp
24: Exp -> NUM B
27: Exp -> FALSE
20: Exp -> Exp BINOP Exp
23: Exp -> NUM
20: Exp -> Exp BINOP Exp
23: Exp -> NUM
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
20: Exp -> Exp BINOP Exp
26: Exp -> TRUE
20: Exp -> Exp BINOP Exp
31: Exp -> Exp RELOP Exp
7: Statement -> ID ASSIGN Exp SC
3: Statements -> Statements Statement
17: Type -> BYTE
23: Exp -> NUM
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
32: Exp -> LPAREN Type RPAREN Exp
25: Exp -> STRING
29: Exp -> Exp AND Exp
7: Statement -> ID ASSIGN Exp SC
3: Statements -> Statements Statement
26: Exp -> TRUE
21: Exp -> ID
20: Exp -> Exp BINOP Exp
26: Exp -> TRUE
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
21: Exp -> ID
20: Exp -> Exp BINOP Exp
20: Exp -> Exp BINOP Exp
27: Exp -> FALSE
21: Exp -> ID
20: Exp -> Exp BINOP Exp
24: Exp -> NUM B
28: Exp -> NOT Exp
28: Exp -> NOT Exp
19: Exp -> LPAREN Exp RPAREN
20: Exp -> Exp BINOP Exp
27: Exp -> FALSE
16: Type -> INT
26: Exp -> TRUE
32: Exp -> LPAREN Type RPAREN Exp
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
20: Exp -> Exp BINOP Exp
30: Exp -> Exp OR Exp
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
31: Exp -> Exp RELOP Exp
7: Statement -> ID ASSIGN Exp SC
3: Statements -> Statements Statement
1: Program -> Statements
line 164: syntax error
