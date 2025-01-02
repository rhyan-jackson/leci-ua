#include <stdio.h>
#include <stdlib.h>
#include <math.h>

// Answering question:
// You need to include math.h to the .c and when compile use -lm to indice there is math's functions here.

int main( void ) {
  int integer;
  int *p = &integer;

  printf("Insert the n for the n first integers, their squares and squareroots > ");
  scanf("%d", p);

  for (int i = 1; i < *p + 1; ++i) {
    if (i == 1) {
      printf("Integer   Square   Squareroot\n");
    }

    printf("%-10d", i);
    printf("%-9d", i * i);
    printf("%-10.3f\n", sqrt(i));

  }
}
