#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>

void printInOrder(char * lhs, char * rhs, int comparationResult) {
  if (comparationResult < 0) {
    printf("In order: %s, %s \n", lhs, rhs);
  }
  else if (comparationResult == 0) {
    printf("%s, %s are equal. \n", lhs, rhs);
  }
  else {
    printf("In order: %s, %s \n", rhs, lhs);
  }
}

void allToLower(char * string) {
  int index = 0;

  while (string[index] != '\0') {
    string[index] = tolower(string[index]);

    index++;
  }
}

int countAlphabetChars(char * string) {
  int count = 0;
  int index = 0;

  while (string[index] != '\0') {
    if (isalpha(string[index])) {
      count++;
    }

    index++;
  }
  
  return count;
}

int countUpperChars(char * string) {
  int count = 0;
  int index = 0;

  while (string[index] != '\0') {
    if (isupper(string[index])) {
      count++;
    }

    index++;
  }
  
  return count;
}
int main( int argc, char *argv[]) {
  char firstWordSTD[30];
  char secondWordSTD[30];
  char *firstWord;
  char *secondWord;

  if (argc == 3) {
    firstWord = argv[1];
    secondWord = argv[2];
  } else if (argc == 1) {

      firstWord = firstWordSTD;
      secondWord = secondWordSTD;

      printf("Insert a word > ");
      fgets(firstWord, 30 , stdin);
      firstWord[strcspn(firstWord, "\n")] = '\0';

      printf("Insert another word > ");
      fgets(secondWord, 30 , stdin);
      secondWord[strcspn(secondWord, "\n")] = '\0';

  } else {
      printf("Give nothing or 2 strings.\n");
      exit(0);
  }

  // printf("%s %s\n", firstWord, secondWord);
  printf("Alphabet letters in the First Word > %d\n", countAlphabetChars(firstWord));
  printf("Upper letters in the Second Word > %d\n", countUpperChars(secondWord));
  allToLower(firstWord);
  allToLower(secondWord);
  printf("Both words were turned upper: %s %s\n", firstWord, secondWord);
  printInOrder(firstWord, secondWord, strcmp(firstWord, secondWord)); 
  char swCopy[30];
  strcpy(swCopy, secondWord);
  printf("The second word was copied to the variable swCopy: %s\n", swCopy);


}
