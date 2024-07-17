import 'package:education_app/constants/images.dart';
import 'package:education_app/core/controllers/login_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends GetView<LoginScreenController> {
  final formGlobalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildLoginview(context),
    );
  }

  _buildLoginview(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[_buildcircleview(context)]);
  }

  _buildcircleview(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      child: Image.asset(circleimg),
    );
  }
}
