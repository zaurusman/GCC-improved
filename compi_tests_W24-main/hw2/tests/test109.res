23: Exp -> NUM
27: Exp -> FALSE
20: Exp -> Exp BINOP Exp
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
21: Exp -> ID
28: Exp -> NOT Exp
7: Statement -> ID ASSIGN Exp SC
10: Statement -> IF LPAREN Exp RPAREN Statement
2: Statements -> Statement
23: Exp -> NUM
14: Statement -> CONTINUE SC
21: Exp -> ID
13: Statement -> BREAK SC
10: Statement -> IF LPAREN Exp RPAREN Statement
2: Statements -> Statement
4: Statement -> LBRACE Statements RBRACE
11: Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement
3: Statements -> Statements Statement
23: Exp -> NUM
27: Exp -> FALSE
20: Exp -> Exp BINOP Exp
23: Exp -> NUM
29: Exp -> Exp AND Exp
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
3: Statements -> Statements Statement
13: Statement -> BREAK SC
3: Statements -> Statements Statement
18: Type -> BOOL
5: Statement -> Type ID SC
3: Statements -> Statements Statement
14: Statement -> CONTINUE SC
3: Statements -> Statements Statement
17: Type -> BYTE
23: Exp -> NUM
28: Exp -> NOT Exp
6: Statement -> Type ID ASSIGN Exp SC
3: Statements -> Statements Statement
9: Statement -> RETURN SC
3: Statements -> Statements Statement
26: Exp -> TRUE
27: Exp -> FALSE
7: Statement -> ID ASSIGN Exp SC
18: Type -> BOOL
24: Exp -> NUM B
32: Exp -> LPAREN Type RPAREN Exp
27: Exp -> FALSE
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
10: Statement -> IF LPAREN Exp RPAREN Statement
11: Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement
2: Statements -> Statement
13: Statement -> BREAK SC
3: Statements -> Statements Statement
26: Exp -> TRUE
27: Exp -> FALSE
14: Statement -> CONTINUE SC
10: Statement -> IF LPAREN Exp RPAREN Statement
10: Statement -> IF LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
21: Exp -> ID
7: Statement -> ID ASSIGN Exp SC
3: Statements -> Statements Statement
26: Exp -> TRUE
25: Exp -> STRING
9: Statement -> RETURN SC
23: Exp -> NUM
25: Exp -> STRING
29: Exp -> Exp AND Exp
25: Exp -> STRING
29: Exp -> Exp AND Exp
7: Statement -> ID ASSIGN Exp SC
2: Statements -> Statement
21: Exp -> ID
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
3: Statements -> Statements Statement
23: Exp -> NUM
25: Exp -> STRING
28: Exp -> NOT Exp
20: Exp -> Exp BINOP Exp
16: Type -> INT
5: Statement -> Type ID SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
18: Type -> BOOL
23: Exp -> NUM
32: Exp -> LPAREN Type RPAREN Exp
21: Exp -> ID
19: Exp -> LPAREN Exp RPAREN
24: Exp -> NUM B
20: Exp -> Exp BINOP Exp
25: Exp -> STRING
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
20: Exp -> Exp BINOP Exp
26: Exp -> TRUE
29: Exp -> Exp AND Exp
30: Exp -> Exp OR Exp
23: Exp -> NUM
7: Statement -> ID ASSIGN Exp SC
13: Statement -> BREAK SC
11: Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement
3: Statements -> Statements Statement
4: Statement -> LBRACE Statements RBRACE
11: Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement
10: Statement -> IF LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
27: Exp -> FALSE
18: Type -> BOOL
5: Statement -> Type ID SC
2: Statements -> Statement
4: Statement -> LBRACE Statements RBRACE
10: Statement -> IF LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
17: Type -> BYTE
21: Exp -> ID
6: Statement -> Type ID ASSIGN Exp SC
3: Statements -> Statements Statement
13: Statement -> BREAK SC
2: Statements -> Statement
4: Statement -> LBRACE Statements RBRACE
3: Statements -> Statements Statement
4: Statement -> LBRACE Statements RBRACE
3: Statements -> Statements Statement
26: Exp -> TRUE
26: Exp -> TRUE
31: Exp -> Exp RELOP Exp
17: Type -> BYTE
5: Statement -> Type ID SC
18: Type -> BOOL
27: Exp -> FALSE
16: Type -> INT
27: Exp -> FALSE
32: Exp -> LPAREN Type RPAREN Exp
20: Exp -> Exp BINOP Exp
6: Statement -> Type ID ASSIGN Exp SC
11: Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement
3: Statements -> Statements Statement
14: Statement -> CONTINUE SC
3: Statements -> Statements Statement
14: Statement -> CONTINUE SC
3: Statements -> Statements Statement
23: Exp -> NUM
21: Exp -> ID
20: Exp -> Exp BINOP Exp
26: Exp -> TRUE
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
21: Exp -> ID
25: Exp -> STRING
20: Exp -> Exp BINOP Exp
23: Exp -> NUM
19: Exp -> LPAREN Exp RPAREN
31: Exp -> Exp RELOP Exp
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
20: Exp -> Exp BINOP Exp
31: Exp -> Exp RELOP Exp
26: Exp -> TRUE
31: Exp -> Exp RELOP Exp
24: Exp -> NUM B
24: Exp -> NUM B
27: Exp -> FALSE
31: Exp -> Exp RELOP Exp
14: Statement -> CONTINUE SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
24: Exp -> NUM B
26: Exp -> TRUE
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
2: Statements -> Statement
17: Type -> BYTE
25: Exp -> STRING
6: Statement -> Type ID ASSIGN Exp SC
3: Statements -> Statements Statement
16: Type -> INT
5: Statement -> Type ID SC
3: Statements -> Statements Statement
13: Statement -> BREAK SC
3: Statements -> Statements Statement
25: Exp -> STRING
19: Exp -> LPAREN Exp RPAREN
13: Statement -> BREAK SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
26: Exp -> TRUE
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
3: Statements -> Statements Statement
24: Exp -> NUM B
27: Exp -> FALSE
24: Exp -> NUM B
20: Exp -> Exp BINOP Exp
21: Exp -> ID
19: Exp -> LPAREN Exp RPAREN
20: Exp -> Exp BINOP Exp
31: Exp -> Exp RELOP Exp
25: Exp -> STRING
21: Exp -> ID
20: Exp -> Exp BINOP Exp
27: Exp -> FALSE
20: Exp -> Exp BINOP Exp
31: Exp -> Exp RELOP Exp
26: Exp -> TRUE
29: Exp -> Exp AND Exp
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
3: Statements -> Statements Statement
4: Statement -> LBRACE Statements RBRACE
10: Statement -> IF LPAREN Exp RPAREN Statement
11: Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement
10: Statement -> IF LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
23: Exp -> NUM
25: Exp -> STRING
31: Exp -> Exp RELOP Exp
26: Exp -> TRUE
21: Exp -> ID
20: Exp -> Exp BINOP Exp
30: Exp -> Exp OR Exp
18: Type -> BOOL
23: Exp -> NUM
6: Statement -> Type ID ASSIGN Exp SC
17: Type -> BYTE
23: Exp -> NUM
24: Exp -> NUM B
26: Exp -> TRUE
20: Exp -> Exp BINOP Exp
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
20: Exp -> Exp BINOP Exp
25: Exp -> STRING
16: Type -> INT
27: Exp -> FALSE
32: Exp -> LPAREN Type RPAREN Exp
20: Exp -> Exp BINOP Exp
23: Exp -> NUM
29: Exp -> Exp AND Exp
30: Exp -> Exp OR Exp
6: Statement -> Type ID ASSIGN Exp SC
11: Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement
3: Statements -> Statements Statement
line 87: lexical error
