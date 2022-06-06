enum Digits {
  zero,
  one,
  two,
  three,
  four,
  five,
  six,
  seven,
  eight,
  nine,
}

class StringConverter {
  static List<num> findNums(String str) {
    List<num> list = [];
    List<String> values = str.split(' ');
    for (String val in values) {
      num? number;
      number = num.tryParse(val);
      if (number != null) {
        list.add(number);
      }
    }
    return list;
  }

  static Map<String, int> findEntries(List<String> list) {
    Map<String, int> res = {};
    for (String val in list) {
      if (res.containsKey(val)) {
        res.update(val, (value) => value += 1);
      } else {
        res[val] = 1;
      }
    }
    return res;
  }

  static List<int> digitCollection(String input) {
    Set<int> enums = {};
    List<String> values = input.split(' ');
    for (String val in values) {
      for (var elem in Digits.values) {
        if (elem.name == val) {
          enums.add(elem.index);
        }
      }
    }
    return enums.toList()..sort();
  }
}
