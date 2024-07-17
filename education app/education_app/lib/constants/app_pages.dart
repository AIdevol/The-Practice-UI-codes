import 'package:education_app/constants/navigation.dart';
import 'package:education_app/core/bindings/bindings.dart';
import 'package:education_app/core/controllers/screen_presentation_controller.dart';
import 'package:education_app/core/presentation/about_app_screen/screen_presentation.dart';
import 'package:education_app/core/presentation/views/login_screen.dart';
import 'package:education_app/services/splash/bindings/splash_bindings.dart';
import 'package:education_app/services/splash/screen/screen_launcher.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  static const INITIAL = AppRoutes.splash;
  static final routes = [
    GetPage(
        name: AppRoutes.splash,
        binding: SplashBindings(),
        page: () => ScreenLauncher()),
    GetPage(
        name: AppRoutes.screenpresentation,
        binding: ScreenBindings(),
        page: () => ScreenPresentation()),
        GetPage(
        name: AppRoutes.login,
        binding: ScreenBindings(),
        page: () => LoginScreen()),
  ];
}
