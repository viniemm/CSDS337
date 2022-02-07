#include <stdio.h>

struct symbol{
    char *name;
    double value;
};

void lookup(struct symbol *);

int main(void)
{
 char *hash[] = {"operators","unary operators","binary operators"}; 
 int values[3] = {101,102,103}; 

 struct symbol nodes[3];

  for (int i=0;i<3;i++)
  {
      nodes[i].name =hash[i];
      nodes[i].value = values[i];
  }
    lookup(); // hint: pass nodes as arg
}

void lookup()
{   
    //print hash and vavlues from 3 nodes
}