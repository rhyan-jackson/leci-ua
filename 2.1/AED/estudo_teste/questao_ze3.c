
int get_matrix_elem(Matrix m, int i, int j);

unsigned int* get_sink_vertices( Digraph* g) {
  Matrix* m = g->matrix;
  int n = g->n;

  int* result = (int*) malloc((n + 1) * sizeof(int));
  int* index_result = 0;

  for (int i = 0; i < n; i++) {
    int hasEmerging = 0;
    int hasIncident = 0;

    for (int j = 0; j < n; j++) {
      hasEmerging = get_matrix_elem(m, i, j);
      if (hasEmerging) break;
      
      hasIncident = hasIncident || get_matrix_elem(m, j, i);
    }
  
    if (!hasEmerging && hasIncident) {
      result[++index_result] = i;
    }
  }
  result[0] = index_result;
  return result;
}
