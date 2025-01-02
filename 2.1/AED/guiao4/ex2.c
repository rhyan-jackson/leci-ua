#include <stdio.h>

int isArrayGP(double array[], int arraySize) {
  int divAndMultCount = 0;

  double r = array[1] / array[0];
  divAndMultCount++;

  for (int i = 2; i < arraySize; i++) {
    divAndMultCount++;
    if ((array[i] / array[i - 1]) != r) {
      printf("%d\n", divAndMultCount);
      return 0;
    }

  }

  printf("%d\n", divAndMultCount);
  return 1;

}

void main(int argc, char *argv[]) {
  double array1[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  double array2[] = {1, 2, 4, 4, 5, 6, 7, 8, 9, 10};
  double array3[] = {1, 2, 4, 8, 5, 6, 7, 8, 9, 10};
  double array4[] = {1, 2, 4, 8, 16, 6, 7, 8, 9, 10};
  double array5[] = {1, 2, 4, 8, 16, 32, 7, 8, 9, 10};
  double array6[] = {1, 2, 4, 8, 16, 32, 64, 8, 9, 10};
  double array7[] = {1, 2, 4, 8, 16, 32, 64, 128, 9, 10};
  double array8[] = {1, 2, 4, 8, 16, 32, 64, 128, 256, 10};
  double array9[] = {1, 2, 4, 8, 16, 32, 64, 128, 256, 512};
  
  
  printf("result: %d\n", isArrayGP(array1, sizeof(array1) / sizeof(array1[0])));
  printf("result: %d\n", isArrayGP(array2, sizeof(array2) / sizeof(array2[0])));
  printf("result: %d\n", isArrayGP(array3, sizeof(array3) / sizeof(array3[0])));
  printf("result: %d\n", isArrayGP(array4, sizeof(array4) / sizeof(array4[0])));
  printf("result: %d\n", isArrayGP(array5, sizeof(array5) / sizeof(array5[0])));
  printf("result: %d\n", isArrayGP(array6, sizeof(array6) / sizeof(array6[0])));
  printf("result: %d\n", isArrayGP(array7, sizeof(array7) / sizeof(array7[0])));
  printf("result: %d\n", isArrayGP(array8, sizeof(array8) / sizeof(array8[0])));
  printf("result: %d\n", isArrayGP(array9, sizeof(array9) / sizeof(array9[0])));

}


/* O melhor caso é o que array[2] / array[1] != (r = array[1] / array[0]) 
 * O pior caso é o que a[n - 1] / a[n - 2] != r ou para todo k < n a[k] / a[k - 1] com n = quant. de elementos do array
 * avg = 5.88
 * para todo n:
 *  O(n): pior caso de execução
 *  Omega(n): melhor caso de execução
 *  Theta(n): caso médio
 *  O*(n): mesmo que O mas ignora casos logaritmicos
 *  o(n): crescimento estritamente menor que a função dada
 *  omega(n): crescimento estritamente maior do que a função dada
 *
 *  portanto, neste caso:
 *    O(n - 1)
 *    Omega(2)
 *
 *
 *
 *
 *
 * */
