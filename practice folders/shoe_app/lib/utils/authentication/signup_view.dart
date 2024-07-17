import 'package:flutter/material.dart';
import 'package:shoe_app/utils/authentication/logIn_view.dart';
import 'package:shoe_app/controllers/checkBox_controller.dart';
import 'package:shoe_app/pages/homepage.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 530,
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome to SignUp Page",
                style: TextStyle(
                    fontFamily: 'sans',
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
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
                    _buildTextField("Mobile Number"),
                    SizedBox(height: 10),
                    _buildTextField("Password"),
                    SizedBox(height: 10),
                    _buildTextField("Confirm Password"),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const TermsAndConditionsCheckbox(),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => MyHomePage())));
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  shadowColor: Colors.grey,
                  elevation: 8,
                ),
                child: Text(
                  "SignUp",
                  style: TextStyle(
                      fontFamily: 'sans',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                        fontFamily: 'sans',
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LogInPage(),
                            ));
                      },
                      child: Text('LogIn',
                          style: TextStyle(fontFamily: 'sans', fontSize: 16)))
                ],
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
