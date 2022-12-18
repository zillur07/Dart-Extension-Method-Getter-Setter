import 'package:example_of_extension_method/src/controllers/example_controller.dart';
import 'package:get/get.dart';

import '../controllers/data_controller.dart';

class Base {
  final exampleC = Get.put(ExampleController());
  final dataC = Get.put(DataController());
}
