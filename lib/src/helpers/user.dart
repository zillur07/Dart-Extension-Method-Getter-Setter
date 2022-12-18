import 'dart:developer';

import 'package:example_of_extension_method/src/helpers/common_methods.dart';

import '../config/base.dart';

class User extends CommonMethod with Base {
  @override
  void add(String val) {
    final user = exampleC.userInput.value;
    exampleC.userList.add(user);
    log('message');
  }

  @override
  void delete(String val) {
    exampleC.userList.remove(val);
  }

  @override
  void update() {}
}
