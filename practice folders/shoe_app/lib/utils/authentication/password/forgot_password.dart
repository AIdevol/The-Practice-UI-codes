import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shoe_app/utils/authentication/Otp/otp_type.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            children: [
              RichText(
                text: const TextSpan(
                  text: 'Reset Password!',
                  style: TextStyle(
                      fontFamily: 'sans',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              Flexible(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    _buildTextField("Enter your Email"),
                    SizedBox(
                      height: 15,
                    ),
                    _buildTextField("New Password"),
                    SizedBox(
                      height: 15,
                    ),
                    _buildTextField("Re-enter Password"),
                  ],
                ),
              ),
              Text(
                '❗Tap to Next for OTP generation',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OtpView()));
                },
                child: const Text(
                  'Next',
                  style: TextStyle(
                      fontFamily: 'sans',
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  shadowColor: Colors.grey,
                  elevation: 8,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String placeholder) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(27.0),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: placeholder,
        ),
      ),
    );
  }
}
