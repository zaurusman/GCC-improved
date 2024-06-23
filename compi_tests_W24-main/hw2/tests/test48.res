23: Exp -> NUM
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
2: Statements -> Statement
18: Type -> BOOL
26: Exp -> TRUE
6: Statement -> Type ID ASSIGN Exp SC
3: Statements -> Statements Statement
13: Statement -> BREAK SC
3: Statements -> Statements Statement
16: Type -> INT
16: Type -> INT
21: Exp -> ID
32: Exp -> LPAREN Type RPAREN Exp
19: Exp -> LPAREN Exp RPAREN
6: Statement -> Type ID ASSIGN Exp SC
3: Statements -> Statements Statement
18: Type -> BOOL
23: Exp -> NUM
19: Exp -> LPAREN Exp RPAREN
6: Statement -> Type ID ASSIGN Exp SC
3: Statements -> Statements Statement
9: Statement -> RETURN SC
3: Statements -> Statements Statement
27: Exp -> FALSE
25: Exp -> STRING
9: Statement -> RETURN SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
24: Exp -> NUM B
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
11: Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement
3: Statements -> Statements Statement
18: Type -> BOOL
23: Exp -> NUM
6: Statement -> Type ID ASSIGN Exp SC
2: Statements -> Statement
13: Statement -> BREAK SC
3: Statements -> Statements Statement
16: Type -> INT
23: Exp -> NUM
19: Exp -> LPAREN Exp RPAREN
6: Statement -> Type ID ASSIGN Exp SC
3: Statements -> Statements Statement
4: Statement -> LBRACE Statements RBRACE
3: Statements -> Statements Statement
25: Exp -> STRING
7: Statement -> ID ASSIGN Exp SC
3: Statements -> Statements Statement
9: Statement -> RETURN SC
3: Statements -> Statements Statement
13: Statement -> BREAK SC
3: Statements -> Statements Statement
16: Type -> INT
5: Statement -> Type ID SC
3: Statements -> Statements Statement
23: Exp -> NUM
26: Exp -> TRUE
20: Exp -> Exp BINOP Exp
14: Statement -> CONTINUE SC
2: Statements -> Statement
4: Statement -> LBRACE Statements RBRACE
10: Statement -> IF LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
13: Statement -> BREAK SC
3: Statements -> Statements Statement
24: Exp -> NUM B
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
3: Statements -> Statements Statement
13: Statement -> BREAK SC
3: Statements -> Statements Statement
23: Exp -> NUM
7: Statement -> ID ASSIGN Exp SC
2: Statements -> Statement
4: Statement -> LBRACE Statements RBRACE
3: Statements -> Statements Statement
23: Exp -> NUM
7: Statement -> ID ASSIGN Exp SC
3: Statements -> Statements Statement
14: Statement -> CONTINUE SC
3: Statements -> Statements Statement
26: Exp -> TRUE
23: Exp -> NUM
31: Exp -> Exp RELOP Exp
13: Statement -> BREAK SC
24: Exp -> NUM B
26: Exp -> TRUE
27: Exp -> FALSE
20: Exp -> Exp BINOP Exp
23: Exp -> NUM
20: Exp -> Exp BINOP Exp
27: Exp -> FALSE
20: Exp -> Exp BINOP Exp
18: Type -> BOOL
27: Exp -> FALSE
23: Exp -> NUM
20: Exp -> Exp BINOP Exp
24: Exp -> NUM B
30: Exp -> Exp OR Exp
19: Exp -> LPAREN Exp RPAREN
32: Exp -> LPAREN Type RPAREN Exp
17: Type -> BYTE
24: Exp -> NUM B
32: Exp -> LPAREN Type RPAREN Exp
20: Exp -> Exp BINOP Exp
27: Exp -> FALSE
20: Exp -> Exp BINOP Exp
21: Exp -> ID
20: Exp -> Exp BINOP Exp
23: Exp -> NUM
30: Exp -> Exp OR Exp
21: Exp -> ID
30: Exp -> Exp OR Exp
14: Statement -> CONTINUE SC
21: Exp -> ID
23: Exp -> NUM
28: Exp -> NOT Exp
19: Exp -> LPAREN Exp RPAREN
27: Exp -> FALSE
29: Exp -> Exp AND Exp
30: Exp -> Exp OR Exp
27: Exp -> FALSE
30: Exp -> Exp OR Exp
13: Statement -> BREAK SC
10: Statement -> IF LPAREN Exp RPAREN Statement
11: Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement
12: Statement -> WHILE LPAREN Exp RPAREN Statement
12: Statement -> WHILE LPAREN Exp RPAREN Statement
11: Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement
3: Statements -> Statements Statement
13: Statement -> BREAK SC
3: Statements -> Statements Statement
1: Program -> Statements
