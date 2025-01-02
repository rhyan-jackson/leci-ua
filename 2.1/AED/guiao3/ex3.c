#include <stdbool.h>
#include <stdio.h>
#include <math.h>

bool isArmstrongNumber(unsigned int n) {
  unsigned int nAux = n;

  int sumOfDigitsPowerN = 0;
  int digit;
  int digitQuant = 0;

  while (nAux != 0) {
    nAux /= 10;
    digitQuant++;
  }

  nAux = n;

  while (nAux != 0) {
    digit = nAux % 10;
    sumOfDigitsPowerN += pow(digit, digitQuant);

    nAux /= 10;
  }

  return (sumOfDigitsPowerN == n);
}

int main(int argc, char *argv[]) {
  printf("%d %d %d\n",
    isArmstrongNumber(912985153),
    isArmstrongNumber(153),
    isArmstrongNumber(371));
}
