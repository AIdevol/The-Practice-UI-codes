import 'package:flutter/material.dart';
import '../../constants/images.dart';

class MySplashPage extends StatelessWidget {
  const MySplashPage({required Key key, required theme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              splashimg, // Assuming Images is a class containing your image paths
              fit: BoxFit
                  .contain, // Adjust the fit according to your requirement
            ),
          ),
        ],
      ),
    );
  }
}
