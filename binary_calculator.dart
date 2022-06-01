import 'dart:math';

class BinaryCalculator {
  static int toBinary(int num) {
    List<int> result = [];
    int bit;
    
    while (num != 0) {
      bit = num % 2;
      result.add(bit);
      num ~/= 2;
    }

    return int.parse(result.reversed.join());
  }

  static int toDecimal(int binaryNum) {
    try {
      int bit, resultSum = 0, counter = 0;
      while (binaryNum != 0) {
        bit = binaryNum % 10;
        if (bit == 1) {
          resultSum += pow(2, counter) as int;
        } else if (bit != 0) {
          throw ArgumentError('Число не двоичное');
        }
        counter++;
        binaryNum ~/= 10;
      }
      return resultSum;
    } on ArgumentError catch (e) {
      print(e);
      return 0;
    }
  }
}
