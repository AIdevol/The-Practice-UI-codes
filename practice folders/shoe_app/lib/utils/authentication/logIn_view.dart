import 'package:flutter/material.dart';
import 'package:shoe_app/utils/authentication/password/forgot_password.dart';
import 'package:shoe_app/controllers/checkBox_controller.dart';
import 'package:shoe_app/pages/homepage.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 380,
          width: 300,
          // decoration: BoxDecoration(color: Colors.red[100]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome to LogIn Page",
                style: TextStyle(
                    fontFamily: '', fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(height: 40),
              // TextFields wrapped with Flexible to occupy remaining space
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(height: 10),
                    _buildTextField("Email"),
                    SizedBox(height: 10),
                    _buildTextField("Password"),
                    SizedBox(height: 10),
                    _buildTextField("Confirm Password"),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgotPassword()));
                },
                child: Text("Forgot Password?"),
                style: TextButton.styleFrom(iconColor: Colors.blue),
              ),
             
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHomePage()));
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  shadowColor: Colors.grey,
                  elevation: 8,
                ),
                child: const Text(
                  "LogIn",
                  style: TextStyle(
                      fontFamily: 'sans',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
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
