#include <stdio.h>
#include <stdlib.h>

int main(void) {
  char string[10];
  printf("Enter your 1 name > ");
  fgets(string, 10 , stdin);
  printf("%s\n", string);

  printf("Enter your 2 name > ");
  gets(string);
  printf("%s\n", string);

  printf("Enter your 3 name > ");
  scanf("%[^\n]", string);
  printf("Hello, %s\n", string);
  return 123;
}
