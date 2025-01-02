//
// TO DO : desenvolva um algoritmo para verificar se um numero inteiro positivo
//         e uma capicua
//         Exemplos: 12321 e uma capiacua, mas 123456 nao e
//         USE uma PILHA DE INTEIROS (STACK) e uma FILA DE INTEIROS (QUEUE)
//
// TO DO : design an algorithm to check if the digits of a positive decimal
//         integer number constitue a palindrome
//         Examples: 12321 is a palindrome, but 123456 is not
//         USE a STACK of integers and a QUEUE of integers
//

#include <stdio.h>

#include "IntegersQueue.h"
#include "IntegersStack.h"

int main(void) {
  int capicua = 0;
  int number;
  printf("Insert a number > ");
  scanf("%d", &number);
  
  int auxNumber = number;
  int remainder;
  int digitCount = 0;

  Stack* stack = StackCreate(10);
  Queue* queue = QueueCreate(10);

  while (auxNumber != 0) {
    remainder = auxNumber % 10;
    digitCount++;

    StackPush(stack, remainder);
    QueueEnqueue(queue, remainder);

    auxNumber = auxNumber / 10;

  }

  for (;digitCount > 0; digitCount--) {
    int lastDigit = QueueDequeue(queue);
    int firstDigit = StackPop(stack);

    if (lastDigit != firstDigit) {
      capicua = 1;
    }
  }

  QueueDestroy(&queue);
  StackDestroy(&stack);

  printf("%d\n", capicua);
}
