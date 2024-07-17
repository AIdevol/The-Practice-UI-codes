import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:portfolio/constants/text_constants.dart';
import 'package:portfolio/presentation/home/hom_page.dart';

class SplashLoader extends StatelessWidget {
  const SplashLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage()),
      );
    });

    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: LoadingAnimationWidget.dotsTriangle(
              color: Colors.black,
              size: 50.0,
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Text(
                "Developed With 💌 $flutter",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
