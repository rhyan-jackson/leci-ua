#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[] ) { // Need to ask JMR why using *.
  if (argc < 2) {
    printf("No arguments provided.\n");
    return 1;
  }

  printf("Olá, ");

  for (int i = 1; i < argc; ++i) {
    if (i == argc - 1) {
      printf("%s.", argv[i]);

    } else {
      printf("%s ", argv[i]);

    }
  }
  
  return 0;
}
