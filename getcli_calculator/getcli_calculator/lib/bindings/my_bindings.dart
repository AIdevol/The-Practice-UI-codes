
import 'package:get/instance_manager.dart';
import 'package:getcli_calculator/controller/calculate_controller.dart';
import 'package:getcli_calculator/controller/theme_controller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CalculateController());
    Get.lazyPut(() => ThemeController());
  }
}
