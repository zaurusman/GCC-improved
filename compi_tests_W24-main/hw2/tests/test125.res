17: Type -> BYTE
5: Statement -> Type ID SC
2: Statements -> Statement
18: Type -> BOOL
5: Statement -> Type ID SC
3: Statements -> Statements Statement
9: Statement -> RETURN SC
3: Statements -> Statements Statement
25: Exp -> STRING
7: Statement -> ID ASSIGN Exp SC
2: Statements -> Statement
24: Exp -> NUM B
9: Statement -> RETURN SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
23: Exp -> NUM
9: Statement -> RETURN SC
13: Statement -> BREAK SC
11: Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement
3: Statements -> Statements Statement
16: Type -> INT
18: Type -> BOOL
24: Exp -> NUM B
28: Exp -> NOT Exp
32: Exp -> LPAREN Type RPAREN Exp
32: Exp -> LPAREN Type RPAREN Exp
26: Exp -> TRUE
20: Exp -> Exp BINOP Exp
27: Exp -> FALSE
20: Exp -> Exp BINOP Exp
18: Type -> BOOL
24: Exp -> NUM B
32: Exp -> LPAREN Type RPAREN Exp
27: Exp -> FALSE
24: Exp -> NUM B
20: Exp -> Exp BINOP Exp
24: Exp -> NUM B
28: Exp -> NOT Exp
20: Exp -> Exp BINOP Exp
25: Exp -> STRING
20: Exp -> Exp BINOP Exp
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
26: Exp -> TRUE
20: Exp -> Exp BINOP Exp
24: Exp -> NUM B
31: Exp -> Exp RELOP Exp
27: Exp -> FALSE
25: Exp -> STRING
20: Exp -> Exp BINOP Exp
23: Exp -> NUM
20: Exp -> Exp BINOP Exp
31: Exp -> Exp RELOP Exp
27: Exp -> FALSE
27: Exp -> FALSE
28: Exp -> NOT Exp
20: Exp -> Exp BINOP Exp
31: Exp -> Exp RELOP Exp
29: Exp -> Exp AND Exp
30: Exp -> Exp OR Exp
21: Exp -> ID
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
18: Type -> BOOL
21: Exp -> ID
23: Exp -> NUM
25: Exp -> STRING
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
20: Exp -> Exp BINOP Exp
15: Call -> ID LPAREN Exp RPAREN
22: Exp -> Call
29: Exp -> Exp AND Exp
6: Statement -> Type ID ASSIGN Exp SC
3: Statements -> Statements Statement
16: Type -> INT
5: Statement -> Type ID SC
3: Statements -> Statements Statement
26: Exp -> TRUE
26: Exp -> TRUE
9: Statement -> RETURN SC
12: Statement -> WHILE LPAREN Exp RPAREN Statement
12: Statement -> WHILE LPAREN Exp RPAREN Statement
3: Statements -> Statements Statement
4: Statement -> LBRACE Statements RBRACE
3: Statements -> Statements Statement
9: Statement -> RETURN SC
3: Statements -> Statements Statement
16: Type -> INT
23: Exp -> NUM
6: Statement -> Type ID ASSIGN Exp SC
3: Statements -> Statements Statement
13: Statement -> BREAK SC
3: Statements -> Statements Statement
16: Type -> INT
25: Exp -> STRING
27: Exp -> FALSE
20: Exp -> Exp BINOP Exp
6: Statement -> Type ID ASSIGN Exp SC
3: Statements -> Statements Statement
14: Statement -> CONTINUE SC
3: Statements -> Statements Statement
21: Exp -> ID
15: Call -> ID LPAREN Exp RPAREN
8: Statement -> Call SC
3: Statements -> Statements Statement
9: Statement -> RETURN SC
3: Statements -> Statements Statement
9: Statement -> RETURN SC
2: Statements -> Statement
14: Statement -> CONTINUE SC
3: Statements -> Statements Statement
4: Statement -> LBRACE Statements RBRACE
3: Statements -> Statements Statement
13: Statement -> BREAK SC
3: Statements -> Statements Statement
25: Exp -> STRING
line 44: syntax error
