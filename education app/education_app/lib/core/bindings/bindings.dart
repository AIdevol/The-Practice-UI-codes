import 'package:education_app/core/controllers/home_screen_controller.dart';
import 'package:education_app/core/controllers/login_screen_controller.dart';
import 'package:education_app/core/controllers/screen_presentation_controller.dart';
import 'package:get/get.dart';

class ScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeScreenController>(() => HomeScreenController());
    Get.lazyPut<ScreenPresentationController>(
        () => ScreenPresentationController());
    Get.lazyPut<LoginScreenController>(() => LoginScreenController());
  }
}
