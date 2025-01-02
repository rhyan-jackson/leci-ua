#include <stdio.h>

// Accumulators are numbers that are the sum of your neighbors.

int countAccumulators(int* array, int arraySize) {
  int count = 0;
  int comparations = 0;
  for (int i = 1; i < arraySize - 1; i++) {
    comparations++;

    if (array[i] == array[i - 1] + array[i + 1]) {
      count++;
    }
  }
  printf("comparations: %d\n", comparations);
  return count;
}


void main(void) {
  int array1[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  int array2[] = {1, 2, 1, 4, 5, 6, 7, 8, 9, 10};
  int array3[] = {1, 2, 1, 3, 2, 6, 7, 8, 9, 10};
  int array4[] = {0, 2, 2, 0, 3, 3, 0, 4, 4, 0};
  int array5[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

  printf("%d\n", countAccumulators(array1, sizeof(array1) / sizeof(array1[0])));
  printf("%d\n", countAccumulators(array2, sizeof(array2) / sizeof(array2[0])));
  printf("%d\n", countAccumulators(array3, sizeof(array3) / sizeof(array3[0])));
  printf("%d\n", countAccumulators(array4, sizeof(array4) / sizeof(array4[0])));
  printf("%d\n", countAccumulators(array5, sizeof(array5) / sizeof(array5[0])));
}

/* Respostas às questões:
 *
 * 1. Não há variação, é um algoritmo determinístico. Não há melhor e pior caso.
 * 2. n - a2
 * 3. somatório de 1 até n-2 de 1
 *
 *
 * */
