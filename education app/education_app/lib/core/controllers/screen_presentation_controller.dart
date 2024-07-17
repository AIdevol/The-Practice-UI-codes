import 'package:education_app/constants/images.dart';
import 'package:education_app/constants/text_constants.dart';
import 'package:get/get.dart';

class ScreenPresentationController extends GetxController {
  List<Map> screenpages = [
    {"image": screenfirst, "title": welcometext},
    {
      "image": screensecond,
      "description": secondtext,
    },
    {
      "image": screenthird,
      "description": thirdtext,
    }
  ];
  @override
  void onInit() {
    super.onInit();
  }

  void onClose() {
    super.onClose();
  }
}
