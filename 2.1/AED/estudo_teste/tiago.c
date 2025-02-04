// Lista ligada -> Crescente

struct Header {
  Node* first;
  int size;
};

struct Node {
  Node* next;
  int value;
};

unsigned int insert(Header* p_seq, unsigned int value) {
  Node* node = p_seq->first;
  Node* newNode = (Node*) malloc(sizeof(struct Node));
  if (newNode != NULL) return 0;

  newNode->value = value;
  Node* previous = NULL;

  if (node == NULL || node->value > value) {
    p_seq->first = newNode;
    newNode->next = node;
    p_seq->size += 1;
    return 1;
  }

  while (node != NULL || node->value <= value) {
    previous = node;
    node = node->next;
  }

  if (previous->value == value) {
    free(newNode);
    return 0;
  }

  previous->next = newNode;
  newNode->next = node;
  p_seq->size += 1;

  return 1;
}


