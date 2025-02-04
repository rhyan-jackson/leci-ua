struct Header {
  int size;
  Node* first;
};

struct Node {
  int value;
  Node* next;
}

Header* Merge(Header* seq_1, Header* seq_2) {
  Header* newHeader = (Header*) malloc(sizeof(struct Header));
  Node* node1 = seq_1->first;
  Node* node2 = seq_2->first;
  int flag = 1;

  newHeader->first = NULL;
  newHeader->size = seq_1->size + seq_2->size;

  if (newHeader->size == 0) {
    return newHeader;
  }

  Node* previous = NULL;

  while(node1 != NULL && node2 != NULL) {
    if(node1->value < node2->value) {
      if (flag == 1) {
        newHeader->first = node1;
        previous = node1;
        flag = 0;
      }

      previous->next = node1;
      node1 = node1->next;
    } else {
      if (flag == 1) {
        newHeader->first = node2;
        previous = node2;
        flag = 0;
      }

      previous->next = node2;
      node2 = node2->next;
    }
    previous = previous->next;
  }

  if(node1 == NULL) {
    previous->next = node2;
    if ()
  }

  if(node2 == NULL) {
    previous->next = node1
  }

  return newHeader;
}

int main(int argc, char *argv[]) {

  return 0;
}
