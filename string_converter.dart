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
        res.update(val, (value) => value++);
      } else {
        res[val] = 0;
      }
    }
    return res;
  }
}
