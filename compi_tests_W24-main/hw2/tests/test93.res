24: Exp -> NUM B
24: Exp -> NUM B
20: Exp -> Exp BINOP Exp
26: Exp -> TRUE
19: Exp -> LPAREN Exp RPAREN
20: Exp -> Exp BINOP Exp
21: Exp -> ID
26: Exp -> TRUE
20: Exp -> Exp BINOP Exp
21: Exp -> ID
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
31: Exp -> Exp RELOP Exp
29: Exp -> Exp AND Exp
25: Exp -> STRING
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
10: Statement -> IF LPAREN Exp RPAREN Statement
2: Statements -> Statement
21: Exp -> ID
16: Type -> INT
5: Statement -> Type ID SC
10: Statement -> IF LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
18: Type -> BOOL
5: Statement -> Type ID SC
3: Statements -> Statements Statement
17: Type -> BYTE
23: Exp -> NUM
32: Exp -> LPAREN Type RPAREN Exp
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
3: Statements -> Statements Statement
26: Exp -> TRUE
19: Exp -> LPAREN Exp RPAREN
7: Statement -> ID ASSIGN Exp SC
3: Statements -> Statements Statement
17: Type -> BYTE
27: Exp -> FALSE
6: Statement -> Type ID ASSIGN Exp SC
3: Statements -> Statements Statement
14: Statement -> CONTINUE SC
3: Statements -> Statements Statement
14: Statement -> CONTINUE SC
3: Statements -> Statements Statement
9: Statement -> RETURN SC
3: Statements -> Statements Statement
14: Statement -> CONTINUE SC
3: Statements -> Statements Statement
9: Statement -> RETURN SC
3: Statements -> Statements Statement
25: Exp -> STRING
21: Exp -> ID
21: Exp -> ID
20: Exp -> Exp BINOP Exp
23: Exp -> NUM
29: Exp -> Exp AND Exp
30: Exp -> Exp OR Exp
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
13: Statement -> BREAK SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
21: Exp -> ID
7: Statement -> ID ASSIGN Exp SC
3: Statements -> Statements Statement
18: Type -> BOOL
23: Exp -> NUM
6: Statement -> Type ID ASSIGN Exp SC
3: Statements -> Statements Statement
13: Statement -> BREAK SC
3: Statements -> Statements Statement
21: Exp -> ID
7: Statement -> ID ASSIGN Exp SC
3: Statements -> Statements Statement
14: Statement -> CONTINUE SC
3: Statements -> Statements Statement
24: Exp -> NUM B
14: Statement -> CONTINUE SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
24: Exp -> NUM B
7: Statement -> ID ASSIGN Exp SC
3: Statements -> Statements Statement
18: Type -> BOOL
5: Statement -> Type ID SC
3: Statements -> Statements Statement
21: Exp -> ID
26: Exp -> TRUE
29: Exp -> Exp AND Exp
19: Exp -> LPAREN Exp RPAREN
14: Statement -> CONTINUE SC
10: Statement -> IF LPAREN Exp RPAREN Statement
2: Statements -> Statement
25: Exp -> STRING
27: Exp -> FALSE
19: Exp -> LPAREN Exp RPAREN
25: Exp -> STRING
31: Exp -> Exp RELOP Exp
23: Exp -> NUM
31: Exp -> Exp RELOP Exp
25: Exp -> STRING
31: Exp -> Exp RELOP Exp
25: Exp -> STRING
29: Exp -> Exp AND Exp
7: Statement -> ID ASSIGN Exp SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
14: Statement -> CONTINUE SC
3: Statements -> Statements Statement
14: Statement -> CONTINUE SC
3: Statements -> Statements Statement
4: Statement -> LBRACE Statements RBRACE
3: Statements -> Statements Statement
13: Statement -> BREAK SC
3: Statements -> Statements Statement
27: Exp -> FALSE
line 36: syntax error
