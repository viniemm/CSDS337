
#include <stdio.h>
void add(int *p);

int main(void)
{
int x, *p;
x = 10;
//----missing----//
*p = x;
add(p);
printf("x =%d",x);
return 0;
}

void add(int *p)
{
    (*p)++;
}