

double s_rec(unsigned int n) {
  assert(n >= 0);

  if (n <= 4) {
    return n;
  }

  return n * s_rec(n / 5);
}
