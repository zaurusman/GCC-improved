
#include <stdio.h>
typedef char byte;
typedef char bool;
bool false = 0;
bool true = 1;
#define not !
#define and &&
#define or ||
#define b *1

void print(const char * s){
    printf("%s\n", s);
}

void printi(int d){
    printf("%d\n", d);
}

int readi(int a){
    int num;
    scanf("%d", &num);
    return num;
}

#define return return 0

int main(){
#include "tempfile.c"
}