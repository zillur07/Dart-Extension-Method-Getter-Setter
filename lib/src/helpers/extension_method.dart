extension ExtendedString on String {
  String prefixWith(String prefix) {
    return '$prefix $this';
  }

  String suffixWith(String suffix) {
    return '$this $suffix';
  }

  String prefixAndSuffixWith({
    required String prefix,
    required String suffix,
  }) {
    return '$prefix $this $suffix';
  }
}

extension ExtendedInt on int {
  int getSum(int val) {
    var sum = val + this;
    return sum;
  }
}

extension ExtendedList on List<String> {
  List addItem(String val) {
    final list = this;
    list.add(val);
    return list;
  }
}
