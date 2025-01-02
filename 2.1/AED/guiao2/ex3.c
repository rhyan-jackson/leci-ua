#include <stdio.h>

void permute(int** a, int** b, int** c) {
  int* auxPointer = *a;

  *a = *b;
  *b = *c;
  *c = auxPointer;

}

void main(int argc, char *argv[])
{
  int a = 1;
  int b = 2;
  int c = 3;

  int* p1 = &a;
  int* p2 = &b;
  int* p3 = &c;

  printf("%d %d %d\n", *p1, *p2, *p3);
  permute(&p1, &p2, &p3);
  printf("%d %d %d\n", *p1, *p2, *p3);

}

/* What we learned here?
 *
 * So, that we can do something like that:
 *
 * I have 3 numbers alocated in memory.
 * I create 3 pointers, each one points to one of these numbers.
 * Then, i want to permute circularly in right-left these pointers in relation of numbers.
 *
 * Before: p1 points to a, p2 points to b, p3 points to c.
 *
 * After: p1 points to b, p2 points to c, p3 points to a.
 *
 * What we can do?
 *
 * Develop a function that:
 *  1) Take the adresses of the pointers.
 *  2) Edit the values stored on this adresses of pointers (the pointers)
 *    How?
 *    2.1) *adress_of_p1 == p1 True
 *         So, we do: *adress_of_p1_aux = *adress_of_p1;
 *                    *adress_of_p1 = *adress_of_p2;
 *                    *adress_of_p2 = *adress_of_p3;
 *                    *adress_of_p3 = *adress_of_p1_aux;
 *
 *
 *
 * */
