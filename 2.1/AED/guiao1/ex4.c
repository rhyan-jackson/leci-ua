#include <stdio.h>

int main( void )
{
  printf("char %d\n", sizeof(char));
  printf("void * %d\n", sizeof(void *));
  printf("void %d\n", sizeof(void));
  printf("short %d\n", sizeof(short));
  printf("int %d\n", sizeof(int));
  printf("long %d\n", sizeof(long));
  printf("long long %d\n", sizeof(long long));
  printf("float %d\n", sizeof(float));
  printf("double %d\n", sizeof(double));
  return 0;
}
