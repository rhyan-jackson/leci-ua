#include <stdio.h>
#include <stdlib.h>

void DisplayPol(double* coef, size_t degree) {
  if (coef == NULL || degree < 0)
    return;

  for (int i = 0; i <= degree; i++) {
    if (i == degree) {
      printf("%+lf", coef[i]);

    } else {
      printf("%+lf * x^%d ", coef[i], (int)degree - i);

    }
  }
  printf("\n");
}

double ComputePol(double* coef, size_t degree, double x) {
  if (coef == NULL || degree < 0)
    exit(1);

  int eval = coef[0];

  for (int i = 0; i < degree; i++) {
    eval = eval * x + coef[i + 1];
  }
  
  return eval;
// coef[0] * x + coef[1]
// (coef[0] * x + coef[1]) * x + coef[2]
// ((coef[0] * x + coef[1]) * x + coef[2]) * x + coef[3]


}

void main(int argc, char *argv[])
{
  double coef[] = {1, 1};
  DisplayPol(coef, sizeof(coef)/ sizeof(coef[0]) - 1);

  printf("%lf\n", ComputePol(coef, sizeof(coef)/ sizeof(coef[0]) - 1, 1));


}
