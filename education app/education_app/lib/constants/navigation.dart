import 'package:education_app/main.dart';
import 'package:logger/logger.dart';

abstract class AppRoutes {
  static const String splash = '/splash';
  static const String screenpresentation = '/screenpresentation';
  static const String home = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String dashboard = '/dashboard';
  static const String profile = '/profile';
  static const String forgotPassword = '/forgot-password';
  static const String resetPassword = '/reset-password';
  static const String otpVerification = '/otp-verification';
  static const String changePassword = '/change-password';
  static const String settings = '/settings';
  static const String aboutUs = '/about-us';
  static const String contactUs = '/contact-us';
  static const String faq = '/faq';
  static const String termsAndConditions = '/terms-and-conditions';
  static const String privacyPolicy = '/privacy-policy';
  static const String paymentMethods = '/payment-methods';
  static const String paymentHistory = '/payment-history';
  static const String paymentSuccess = '/payment-success';
  static const String paymentFailed = '/payment-failed';
  static const String paymentCancel = '/payment-cancel';
  static const String paymentError = '/payment-error';
  static const String paymentWebhook = '/payment-webhook';
  static const String paymentWebhookFailed = '/payment-webhook-failed';
}

class RoutesArguments {
  static const emailkey = "emailKey";
  static const userKey = "userKey";
}

class LoggerX {
  static void write(String text, {bool isError = false}) {
    Future.microtask(() => isError ? log.v("$text") : log.i("$text"));
  }
}
