#include <stdio.h>
#include <stdlib.h>

int main(void) {
  char string[10];
  printf("Enter your name > ");
  char *r = fgets(string, 10 , stdin);

  if (r == NULL) {
    fprintf(stderr, "Não veio nada.\n");
    exit(1);
  }

  printf("%s\n", string);

  scanf("%[^\n]", string);
  printf("Hello, %s\n", string);
  return 123;
}
