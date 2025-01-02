#include <stdio.h>

// ANNOTATION:
//
// 3 problems:
// - Recursive
// - Iterative with Dynamic Programming
// - Recursive with Memoization (global 2D array)
// 
// Concepts:
// Iterative is using for's and while's (duh)
// Dynamic Programming is using an memory to store the previous results to use it on next calls.
// Memoization is to before doing a instruction you go to the memory and verify if it's already stored and if it's not, do the recursive function. 

int sum_count_global = 0;

long delannoyR(unsigned int pos1, unsigned int pos2) {
  if (pos1 == 0 || pos2 == 0) return 1;

  sum_count_global += 2;
  return delannoyR(pos1 - 1, pos2) + delannoyR(pos1 - 1, pos2 - 1) + delannoyR(pos1, pos2 - 1);
}

long delannoyPDI(unsigned int m, unsigned int n) {
  // m ->
  // n ^
  long dMem[m + 1][n + 1];
  long r;

  for (int i = 0; i <= m; i++) {
    for (int j = 0; j <= n; j++) {
      if (i == 0 || j == 0) {
        r = 1;
      } else {
        sum_count_global += 2;
        r = dMem[i - 1][j] + dMem[i - 1][j - 1] + dMem[i][j - 1];
      }
      dMem[i][j] = r;
    }
  }

  return dMem[m][n];
}

long cache[50][50] = {{0}};

long delannoyRM(unsigned int m, unsigned int n) {
  long cached_value = cache[m][n];
  long r;

  if (cached_value != 0) {
    return cached_value;
  }

  if (m == 0 || n == 0) {
    r = 1;
  } else {
    sum_count_global += 2;
    r = delannoyRM(m - 1, n) + delannoyRM(m - 1, n - 1) + delannoyRM(m, n - 1);
  }
  
  cache[m][n] = r;
  return r;
}


void main(int argc, char *argv[]) {
  // printf("pos1   pos2   delannoyR   delannoyPDI   delannoyRM\n");
  // for (int i = 0; i < 10; i++) {
  //   unsigned long delannoyRresult= delannoyR(i, i);
  //   unsigned long delannoyPDIresult = delannoyPDI(i, i);
  //   unsigned long delannoyRMresult = delannoyRM(i, i);
  //   printf("%-7d%-7d%-13ld%-15ld%ld\n", i, i, delannoyRresult, delannoyPDIresult, delannoyRMresult);
  // }

  int i;
  printf("Insira o i > ");
  scanf("%d", &i);
  long result;


  printf("method       result    sum_count\n");
  result = delannoyR(i, i);
  printf("delannoyR    %-11ld%d\n", result, sum_count_global);
  sum_count_global = 0;
  result = delannoyPDI(i, i);
  printf("delannoyPDI  %-11ld%d\n", result, sum_count_global);
  sum_count_global = 0;
  result = delannoyRM(i, i);
  printf("delannoyRM   %-11ld%d\n", result, sum_count_global);
  sum_count_global = 0;

}
