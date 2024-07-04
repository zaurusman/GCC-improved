25: Exp -> STRING
26: Exp -> TRUE
29: Exp -> Exp AND Exp
19: Exp -> LPAREN Exp RPAREN
16: Type -> INT
5: Statement -> Type ID SC
26: Exp -> TRUE
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
11: Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement
2: Statements -> Statement
9: Statement -> RETURN SC
3: Statements -> Statements Statement
13: Statement -> BREAK SC
3: Statements -> Statements Statement
25: Exp -> STRING
27: Exp -> FALSE
25: Exp -> STRING
20: Exp -> Exp BINOP Exp
9: Statement -> RETURN SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
25: Exp -> STRING
7: Statement -> ID ASSIGN Exp SC
11: Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement
3: Statements -> Statements Statement
9: Statement -> RETURN SC
3: Statements -> Statements Statement
14: Statement -> CONTINUE SC
2: Statements -> Statement
4: Statement -> LBRACE Statements RBRACE
3: Statements -> Statements Statement
26: Exp -> TRUE
14: Statement -> CONTINUE SC
2: Statements -> Statement
4: Statement -> LBRACE Statements RBRACE
10: Statement -> IF LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
9: Statement -> RETURN SC
3: Statements -> Statements Statement
27: Exp -> FALSE
27: Exp -> FALSE
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
16: Type -> INT
5: Statement -> Type ID SC
3: Statements -> Statements Statement
14: Statement -> CONTINUE SC
3: Statements -> Statements Statement
21: Exp -> ID
14: Statement -> CONTINUE SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
18: Type -> BOOL
26: Exp -> TRUE
28: Exp -> NOT Exp
24: Exp -> NUM B
20: Exp -> Exp BINOP Exp
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
26: Exp -> TRUE
20: Exp -> Exp BINOP Exp
27: Exp -> FALSE
31: Exp -> Exp RELOP Exp
6: Statement -> Type ID ASSIGN Exp SC
3: Statements -> Statements Statement
26: Exp -> TRUE
13: Statement -> BREAK SC
21: Exp -> ID
24: Exp -> NUM B
23: Exp -> NUM
20: Exp -> Exp BINOP Exp
27: Exp -> FALSE
29: Exp -> Exp AND Exp
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
27: Exp -> FALSE
9: Statement -> RETURN SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
11: Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement
11: Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement
3: Statements -> Statements Statement
21: Exp -> ID
24: Exp -> NUM B
19: Exp -> LPAREN Exp RPAREN
24: Exp -> NUM B
28: Exp -> NOT Exp
23: Exp -> NUM
20: Exp -> Exp BINOP Exp
20: Exp -> Exp BINOP Exp
30: Exp -> Exp OR Exp
7: Statement -> ID ASSIGN Exp SC
3: Statements -> Statements Statement
16: Type -> INT
16: Type -> INT
17: Type -> BYTE
23: Exp -> NUM
32: Exp -> LPAREN Type RPAREN Exp
32: Exp -> LPAREN Type RPAREN Exp
25: Exp -> STRING
20: Exp -> Exp BINOP Exp
25: Exp -> STRING
29: Exp -> Exp AND Exp
25: Exp -> STRING
29: Exp -> Exp AND Exp
26: Exp -> TRUE
21: Exp -> ID
20: Exp -> Exp BINOP Exp
27: Exp -> FALSE
20: Exp -> Exp BINOP Exp
29: Exp -> Exp AND Exp
6: Statement -> Type ID ASSIGN Exp SC
3: Statements -> Statements Statement
23: Exp -> NUM
21: Exp -> ID
20: Exp -> Exp BINOP Exp
17: Type -> BYTE
line 26: syntax error
