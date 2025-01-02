#include <stdio.h>

unsigned int CALLS = 0;

int t1(int n) {
  // printf("now n is %d\n", n);
  CALLS++;
  if (n == 1) {
    return 1;
  }
  
  return t1(n / 2) + n;
}

int t2(int n) {
  CALLS++;

  if (n == 1) {
    return 1;
  }

  return t2(n / 2) + t2((n + 1) / 2) + n;
}

int t3(int n) {
  CALLS++;

  if (n == 1) {
    return 1;

  } else if(n % 2 == 0) {
    return 2 * t3(n / 2);

  } else {
    return t3(n / 2) + t3((n + 1) / 2 ) + n;
  }
}

int main(int argc, char *argv[])
{
  printf("T1 | N          T(N)       CALLS\n");
  for (int n = 1; n <= 15; n++) {
    CALLS = 0;
    int r = t1(n);
    printf("     %-10d %-10d %-10d\n", n, r, CALLS);
  }

  printf("T2 | N          T(N)       CALLS\n");
  for (int n = 1; n <= 15; n++) {
    CALLS = 0;
    int r = t2(n);
    printf("     %-10d %-10d %-10d\n", n, r, CALLS);
  }

  printf("T3 | N          T(N)       CALLS\n");
  for (int n = 1; n <= 15; n++) {
    CALLS = 0;
    int r = t3(n);
    printf("     %-10d %-10d %-10d\n", n, r, CALLS);
  }
}
