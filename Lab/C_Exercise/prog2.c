#include <stdio.h>
/* Define a structure type. */

struct struct_type {
int a, b;
char ch;
} ;

void f1(struct struct_type param);

int main(void)
{


struct struct_type arg;
arg.a = 1000;
f1(arg);
return 0;
}

void f1(struct struct_type param)
{
printf("%d", param.a);
}

