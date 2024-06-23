18: Type -> BOOL
5: Statement -> Type ID SC
2: Statements -> Statement
13: Statement -> BREAK SC
3: Statements -> Statements Statement
16: Type -> INT
5: Statement -> Type ID SC
3: Statements -> Statements Statement
25: Exp -> STRING
17: Type -> BYTE
5: Statement -> Type ID SC
10: Statement -> IF LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
16: Type -> INT
23: Exp -> NUM
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
23: Exp -> NUM
20: Exp -> Exp BINOP Exp
23: Exp -> NUM
24: Exp -> NUM B
20: Exp -> Exp BINOP Exp
31: Exp -> Exp RELOP Exp
6: Statement -> Type ID ASSIGN Exp SC
3: Statements -> Statements Statement
14: Statement -> CONTINUE SC
3: Statements -> Statements Statement
14: Statement -> CONTINUE SC
3: Statements -> Statements Statement
16: Type -> INT
23: Exp -> NUM
32: Exp -> LPAREN Type RPAREN Exp
16: Type -> INT
23: Exp -> NUM
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
32: Exp -> LPAREN Type RPAREN Exp
20: Exp -> Exp BINOP Exp
16: Type -> INT
5: Statement -> Type ID SC
10: Statement -> IF LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
27: Exp -> FALSE
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
3: Statements -> Statements Statement
17: Type -> BYTE
5: Statement -> Type ID SC
2: Statements -> Statement
4: Statement -> LBRACE Statements RBRACE
3: Statements -> Statements Statement
18: Type -> BOOL
23: Exp -> NUM
6: Statement -> Type ID ASSIGN Exp SC
3: Statements -> Statements Statement
13: Statement -> BREAK SC
3: Statements -> Statements Statement
9: Statement -> RETURN SC
3: Statements -> Statements Statement
14: Statement -> CONTINUE SC
3: Statements -> Statements Statement
25: Exp -> STRING
23: Exp -> NUM
7: Statement -> ID ASSIGN Exp SC
23: Exp -> NUM
7: Statement -> ID ASSIGN Exp SC
11: Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement
3: Statements -> Statements Statement
24: Exp -> NUM B
16: Type -> INT
26: Exp -> TRUE
32: Exp -> LPAREN Type RPAREN Exp
29: Exp -> Exp AND Exp
19: Exp -> LPAREN Exp RPAREN
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
13: Statement -> BREAK SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
17: Type -> BYTE
21: Exp -> ID
6: Statement -> Type ID ASSIGN Exp SC
3: Statements -> Statements Statement
13: Statement -> BREAK SC
3: Statements -> Statements Statement
25: Exp -> STRING
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
3: Statements -> Statements Statement
17: Type -> BYTE
25: Exp -> STRING
6: Statement -> Type ID ASSIGN Exp SC
3: Statements -> Statements Statement
line 39: lexical error
