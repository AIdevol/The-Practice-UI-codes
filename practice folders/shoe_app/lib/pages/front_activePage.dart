import 'package:flutter/material.dart';
import 'package:shoe_app/constants/image.dart';
import 'package:shoe_app/utils/authentication/logIn_view.dart';
import 'package:shoe_app/utils/authentication/signup_view.dart';

class MyFrontactive extends StatelessWidget {
  const MyFrontactive({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 700,
              width: 300,
              // color: Colors.white,
              child: ListView(
                children: [
                  Image.asset(
                    Shopbag,
                    height: 280,
                    width: 280,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  const Center(
                    child: Text(
                      "Lorem ipsum dolor sit amet consectetur hello adipiscing elit",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'sans',
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LogInPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.red,
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 24),
                      shadowColor: Colors.grey,
                      elevation: 8,
                    ),
                    child: const Text(
                      "Start Shopping",
                      style: TextStyle(
                          fontFamily: 'sans',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ignore: prefer_const_constructors
                      Text(
                        "Don't have an account?",
                        style: const TextStyle(
                            fontFamily: 'sans',
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUpPage()));
                          },
                          child: const Text(
                            "Signup",
                            style: TextStyle(
                              fontFamily: 'sans',
                              fontSize: 18,
                              color: Colors.blue,
                            ),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
