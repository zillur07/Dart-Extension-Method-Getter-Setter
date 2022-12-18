extension MyExtensionMethord on int {
  int multiply() {
    return 10 * this;
  }
}

extension AddExtension on int {
  int add() {
    return 10 * this;
  }
}

extension NameExtension on String {
  String sayNameWithHelloBro() {
    return 'Hello ${this}';
  }
}
