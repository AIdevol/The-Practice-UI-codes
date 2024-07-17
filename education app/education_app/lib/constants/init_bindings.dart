import 'package:education_app/core/bindings/bindings.dart';
import 'package:get/get.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScreenBindings>(() => ScreenBindings());
    
  }
}
