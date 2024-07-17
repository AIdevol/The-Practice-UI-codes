import 'package:education_app/constants/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final isLoading = true.obs;
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void onInit() {
    super.onInit();
    SystemChannels.textInput.invokeMethod('TextInput.hide');

    animationController =
        AnimationController(duration: const Duration(seconds: 5), vsync: this)
          ..repeat(reverse: true);

    animation = Tween<double>(begin: 0, end: 20).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeInOut),
    );
    Future.delayed(Duration(seconds: 5), () {
      isLoading.value = false;
      Get.offAllNamed(AppRoutes.screenpresentation);
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}
