int abs(int x) => x <= 0 ? -x : x;

int nod(int a, int b) {
  int res = 1;
  if (a != 0) {
    for (int delimeter = 1; delimeter <= abs(a); delimeter++) {
      if (a % delimeter == 0 && b % delimeter == 0) {
        res = delimeter;
      }
    }
  } else {
    res = abs(b);
  }
  return res;
}

void main() {
  print(nod(0, 0));
}
