import 'dart:ui';

import 'package:education_app/constants/app_pages.dart';
import 'package:education_app/constants/images.dart';
import 'package:education_app/constants/init_bindings.dart';
import 'package:education_app/constants/navigation.dart';
import 'package:education_app/core/presentation/views/home_screen.dart';
import 'package:education_app/services/splash/screen/screen_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';

var log = Logger();
GetStorage storage = GetStorage();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          scrollBehavior: const MaterialScrollBehavior().copyWith(dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
            PointerDeviceKind.stylus,
            PointerDeviceKind.unknown
          }),
          title: 'Flutter Demo',
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          initialBinding: InitBinding(),
          logWriterCallback: LoggerX.write,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: child,
        );
      },
    );
  }
}
