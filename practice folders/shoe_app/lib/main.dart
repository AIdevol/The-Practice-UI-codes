import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe_app/pages/front_activePage.dart';
import 'package:shoe_app/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
        debugShowCheckedModeBanner: false, home: MyFrontactive());
  }
}
