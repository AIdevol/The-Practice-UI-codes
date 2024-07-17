import 'package:education_app/core/controllers/screen_presentation_controller.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ScreenPresentation extends GetView<ScreenPresentationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildScreen(context),
    );
  }

  Widget _buildScreen(BuildContext context) {
    return SizedBox(
      child: PageView.builder(
        itemCount: controller.screenpages.length,
        itemBuilder: (context, index) {
          return _buildPage(controller.screenpages[index], context);
        },
      ),
    );
  }

  Widget _buildPage(Map page, BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (page['image'] != null)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              page['image'],
              fit: BoxFit.contain,
              width: MediaQuery.of(context).size.width *
                  0.8, // 80% of screen width
              height: MediaQuery.of(context).size.height *
                  0.4, // 40% of screen height
            ),
          ),
        if (page['title'] != null)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              page['title'],
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        if (page['description'] != null)
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              page['description'],
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        Gap(20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              Get.toNamed('/login');
            },
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.all(20)),
              backgroundColor: MaterialStateProperty.all(Colors.red),
            ),
            child: const Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Continue",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 10), // Add spacing between Text and Icon
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
