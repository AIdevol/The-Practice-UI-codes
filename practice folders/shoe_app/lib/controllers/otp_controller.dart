import 'dart:math';

class OTPController {
  static String generateOTP({int length = 6}) {
    // Define the character set for generating OTP
    const charset = '0123456789';
    final random = Random();
    // Generate OTP by randomly selecting characters from the charset
    return String.fromCharCodes(Iterable.generate(
      length, (_) => charset.codeUnitAt(random.nextInt(charset.length)),
    ));
  }
}
