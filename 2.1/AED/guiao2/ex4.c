#include <stdio.h>
#include <stdlib.h>

void displayArray(double* a, size_t n) {
  int numOfElements = n / sizeof(double);
  double* elemAdress = a;

  printf("Array = [ ");

  for (int i = 0; i < numOfElements; i++) {
    printf("%.2f", *elemAdress);

    elemAdress += 1;

    if (i != numOfElements - 1) {
      printf(", ");
    }
  }
  printf(" ]\n");
}

double* readArray(size_t* size_p) {
  
  if (size_p == NULL || size_p <= 0) {
    return NULL;
  }

  printf("Insert the number of elements > ");
  int size;
  scanf("%d", &size);
  
  double* array = malloc(size * sizeof(double));

  if (array == NULL) {
    *size_p = 0;
    return NULL;
  }

  for (int i = 0; i < size; i++) {
    printf("Enter element %d > ", i);
    scanf("%lf", &array[i]);
    printf("\n");
  }

  *size_p = size * sizeof(double);
  return array;
}


void main(int argc, char *argv[])
{
  double array1[] = {1, 2, 8, 1, 2};

  displayArray(array1, sizeof(array1));

  size_t size;
  double* array2 = readArray(&size);
  displayArray(array2, size); 
  printf("%ld\n", size);
}
