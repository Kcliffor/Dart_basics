num _abs(num x) => x <= 0 ? -x : x;

class DelimetersCalculator {
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
    res = _abs(a * b) ~/ commonNum;
    return res;
  }

  static List<int> simpleDigits(int num) {
    num = _abs(num).toInt();
    List<int> digitsList = [];
    for (int i = 2; i <= num.my_sqrt(2); i++) {
      while (num % i == 0) {
        digitsList.add(i);
        num ~/= i;
      }
    }
    if (num != 1) digitsList.add(num);
    return digitsList;
  }
}

extension Xnum on num {
  double my_sqrt(num rootValue) {
    double root = this / rootValue; // начальное приближение корня
    num val = this; // значение корня последовательным делением

    while (_abs(root - val) >= 1e-7) {
      val = this;
      for (int i = 1; i < rootValue; i++) {
        val /= root;
      }
      root = 0.5 * (val + root);
    }

    return root;
  }
}
