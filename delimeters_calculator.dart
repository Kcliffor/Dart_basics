import 'dart:math';

class DelimetersCalculator {
  static int _abs(int x) => x <= 0 ? -x : x;

  static int nod(int a, int b) {
    int res, dividend, divisor;
    if (_abs(a) >= _abs(b)) {
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
    res = (_abs(a * b)) ~/ commonNum;
    return res;
  }

  static List<int> simpleDigits(int num) {
    num = _abs(num);
    List<int> digitsList = [];
    for (int i = 2; i <= sqrt(num); i++) {
      while (num % i == 0) {
        digitsList.add(i);
        num ~/= i;
      }
    }
    if (num != 1) digitsList.add(num);
    return digitsList;
  }
}
