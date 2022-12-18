import 'package:get/get.dart';

class ExampleController extends GetxController {
//=============== Ezample of Extension method ====================

  final val_1 = RxString('');
  final val_2 = RxString('');
  final val_3 = RxString('');
  final val_4 = RxString('');
  final expSuffix = RxString(' Apple.');
  final expPrefix = RxString('I love ');
  final expPrefixAndSuffix = RxString('love');

  final counter = RxInt(0);
  final inputInt = RxInt(0);

  final inputVal_1 = RxString('');
  final inputVal_2 = RxString('');

  final fruitList = RxList<String>([]);

  //=============== Ezample of Seter & geter ====================

  final userList = RxList<String>([]);
  final userInput = RxString('');

  final productList = RxList<String>([]);
  final inputProduct = RxString('');
}
