#include <stdio.h>
#include <stdlib.h>

void printIntArray(char string[], int array[], int arraySize) {
  printf("%s: ", string);

  for (int i = 0; i < arraySize; ++i) {
    printf("%d ", array[i]);
  }
}

void cumSum(int a[], int b[], int sizeOfA) {
  int c = 0;
  
  for (int i = 0; i < sizeOfA; ++i ) {
    c += a[i];
    b[i] = c;
  }
}

int main( void ) {
  int a[] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
  int b[] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
  int aSize = sizeof(a) / sizeof(a[0]);
  printf("size: %d\n", aSize);
  printIntArray("Array", a, aSize);
  printf("\n");
  cumSum(a, b, aSize);
  printIntArray("Array b after cum", b, aSize);
  return 0;
}

