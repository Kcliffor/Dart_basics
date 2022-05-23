int abs(int x) => x <= 0 ? -x : x;

class DelimetersCalculator {
  static int nod(int a, int b) {
    int res, dividend, divisor;
    if (abs(a) >= abs(b)) {
      dividend = a;
      divisor = b;
    } else {
      dividend = b;
      divisor = a;
    }
    while (dividend != 0) {
      res = dividend % divisor;
      if (res == 0) {
        break;
      } else {
        dividend = divisor;
        divisor = res;
      }
    }
    return divisor;
  }

  static int nok(int a, int b) {
    int res = 1;
    int commonNum = nod(a, b);
    res = (a * b) ~/ commonNum;
    return res;
  }

  static List<int> simpleDigits(int num) {
    List<int> digitsList = [];
    // for(int i = 0; i < )

    return digitsList;
  }
}

void main() {
  print(DelimetersCalculator.nod(21, 24));
}
