import 'dart:developer';

import 'package:example_of_extension_method/src/helpers/common_methods.dart';

import '../config/base.dart';

class Product extends CommonMethod with Base {
  @override
  void add(String val) {
    final product = exampleC.inputProduct.value;
    exampleC.productList.add(product);
  }

  @override
  void delete(String val) {
    exampleC.productList.remove(val);
  }

  @override
  void update() {}
}
