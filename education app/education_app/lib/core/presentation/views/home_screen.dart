import 'package:education_app/core/controllers/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends GetView<HomeScreenController> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Education App'),
        leading: Icon(Icons.menu),
      ),
      body: _bodyContainer(context),
    );
  }
}

Widget _bodyContainer(BuildContext context) {
  return Obx(() => Container());
}
