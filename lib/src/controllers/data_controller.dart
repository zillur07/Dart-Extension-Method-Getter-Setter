import 'dart:developer';

import 'package:get/get.dart';
import 'package:example_of_extension_method/src/helpers/my_extension_methord.dart';

class DataController extends GetxController {
  final abc = RxInt(0);
  final name = RxString('');
  final name2 = RxString('');

  final productList = RxList<String>([]);

  void multiplyMethord() async {
    log('${5.multiply()}');
  }

  addition() {
    abc.value = 20.add();
    log('${20.add()}');
  }

  helloName() {
    name.value = 'Zillur Rahman '.sayNameWithHelloBro();
    log('Zillur'.sayNameWithHelloBro());
  }

  helloNameWithArgument(name) {
    name.value = name.sayNameWithHelloBro();
    log('Zillur'.sayNameWithHelloBro());
  }
}

kLog(val) {
  log('$val');
}
