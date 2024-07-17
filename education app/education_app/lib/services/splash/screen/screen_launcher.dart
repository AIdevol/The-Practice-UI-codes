import 'package:education_app/constants/images.dart';
import 'package:education_app/services/splash/controllers/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenLauncher extends GetView<SplashScreenController> {
  final SplashScreenController controller = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(
          () {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (controller.isLoading.value) CircularProgressIndicator(),
                AnimatedBuilder(
                  animation: controller.animation,
                  builder: (context, child) {
                    return Transform.translate(
                      offset: Offset(0, controller.animation.value),
                      child: Container(
                        height: Get.height * 0.8,
                        width: Get.width * 0.8,
                        child: Image.asset(
                          ScreenLauncherimg,
                          height: Get.height * 0.8,
                          width: Get.width * 0.8,
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) {
                            return Text('Error loading image');
                          },
                        ),
                      ),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
