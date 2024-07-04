24: Exp -> NUM B
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
2: Statements -> Statement
9: Statement -> RETURN SC
3: Statements -> Statements Statement
18: Type -> BOOL
21: Exp -> ID
25: Exp -> STRING
29: Exp -> Exp AND Exp
6: Statement -> Type ID ASSIGN Exp SC
3: Statements -> Statements Statement
17: Type -> BYTE
5: Statement -> Type ID SC
3: Statements -> Statements Statement
25: Exp -> STRING
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
21: Exp -> ID
31: Exp -> Exp RELOP Exp
7: Statement -> ID ASSIGN Exp SC
3: Statements -> Statements Statement
26: Exp -> TRUE
14: Statement -> CONTINUE SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
27: Exp -> FALSE
16: Type -> INT
5: Statement -> Type ID SC
10: Statement -> IF LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
18: Type -> BOOL
25: Exp -> STRING
6: Statement -> Type ID ASSIGN Exp SC
3: Statements -> Statements Statement
18: Type -> BOOL
26: Exp -> TRUE
27: Exp -> FALSE
23: Exp -> NUM
20: Exp -> Exp BINOP Exp
29: Exp -> Exp AND Exp
6: Statement -> Type ID ASSIGN Exp SC
3: Statements -> Statements Statement
21: Exp -> ID
18: Type -> BOOL
21: Exp -> ID
6: Statement -> Type ID ASSIGN Exp SC
10: Statement -> IF LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
16: Type -> INT
24: Exp -> NUM B
26: Exp -> TRUE
30: Exp -> Exp OR Exp
6: Statement -> Type ID ASSIGN Exp SC
3: Statements -> Statements Statement
9: Statement -> RETURN SC
3: Statements -> Statements Statement
25: Exp -> STRING
27: Exp -> FALSE
20: Exp -> Exp BINOP Exp
24: Exp -> NUM B
20: Exp -> Exp BINOP Exp
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
3: Statements -> Statements Statement
21: Exp -> ID
17: Type -> BYTE
21: Exp -> ID
6: Statement -> Type ID ASSIGN Exp SC
10: Statement -> IF LPAREN Exp RPAREN Statement
2: Statements -> Statement
9: Statement -> RETURN SC
3: Statements -> Statements Statement
9: Statement -> RETURN SC
3: Statements -> Statements Statement
4: Statement -> LBRACE Statements RBRACE
3: Statements -> Statements Statement
9: Statement -> RETURN SC
3: Statements -> Statements Statement
23: Exp -> NUM
16: Type -> INT
5: Statement -> Type ID SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
14: Statement -> CONTINUE SC
3: Statements -> Statements Statement
21: Exp -> ID
26: Exp -> TRUE
25: Exp -> STRING
20: Exp -> Exp BINOP Exp
20: Exp -> Exp BINOP Exp
25: Exp -> STRING
31: Exp -> Exp RELOP Exp
13: Statement -> BREAK SC
14: Statement -> CONTINUE SC
11: Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement
3: Statements -> Statements Statement
27: Exp -> FALSE
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
7: Statement -> ID ASSIGN Exp SC
3: Statements -> Statements Statement
21: Exp -> ID
26: Exp -> TRUE
19: Exp -> LPAREN Exp RPAREN
20: Exp -> Exp BINOP Exp
26: Exp -> TRUE
31: Exp -> Exp RELOP Exp
23: Exp -> NUM
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
16: Type -> INT
25: Exp -> STRING
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
6: Statement -> Type ID ASSIGN Exp SC
3: Statements -> Statements Statement
16: Type -> INT
5: Statement -> Type ID SC
2: Statements -> Statement
4: Statement -> LBRACE Statements RBRACE
3: Statements -> Statements Statement
14: Statement -> CONTINUE SC
3: Statements -> Statements Statement
18: Type -> BOOL
5: Statement -> Type ID SC
3: Statements -> Statements Statement
23: Exp -> NUM
23: Exp -> NUM
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
1: Program -> Statements
