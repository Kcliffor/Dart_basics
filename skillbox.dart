int abs(int x) => x <= 0 ? -x : x;

int nod(int a, int b) {
  int res = 1;
  if (a != 0 && b != 0) {
    for (int delimeter = abs(a) <= abs(b) ? abs(a) : abs(b);
        delimeter > 0;
        delimeter--) {
      if (a % delimeter == 0 && b % delimeter == 0) {
        res = delimeter;
        break;
      }
    }
  } else {
    res = abs(b) >= abs(a) ? abs(b) : abs(a);
  }
  return res;
}

void main() {
  print(nod(-4, 12));
}
