hw1: lex.yy.c hw1.cpp
	g++ -std=c++17 lex.yy.c hw1.cpp -o hw1.out

lex: lex.yy
	flex lex.yy

clean:
	rm -f lex.yy.c hw1.out