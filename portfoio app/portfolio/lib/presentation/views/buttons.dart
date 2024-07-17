// import 'package:flutter/material.dart';

// class ButtonView extends StatelessWidget {
//   const ButtonView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 50,
//       width: 150,
//       decoration: BoxDecoration(
//           border: Border.all(color: Colors.blue),
//           borderRadius: BorderRadius.circular(20),
//           color: Colors.blue[600]),
//       child: Center(
//           child: GestureDetector(
//         onTap: () {
//           print("button tapped");
//         },
//         child: Text("Download CV"),
//       )),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:portfolio/presentation/views/contact_me.dart';

class ButtonView extends StatefulWidget {
  const ButtonView({super.key});

  @override
  _ButtonViewState createState() => _ButtonViewState();
}

class _ButtonViewState extends State<ButtonView> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: _isHovered ? 50 : 40,
        width: _isHovered ? 160 : 150,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(20),
          color: Colors.transparent,
          boxShadow: _isHovered
              ? [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.6),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ]
              : [],
        ),
        child: Center(
          child: GestureDetector(
            onTap: () {
              print("button tapped");
            },
            child: const Text(
              "Download CV",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Expanded_regular'),
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonView2 extends StatefulWidget {
  const ButtonView2({super.key});

  @override
  _ButtonView2State createState() => _ButtonView2State();
}

class _ButtonView2State extends State<ButtonView2> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: _isHovered ? 50 : 40,
        width: _isHovered ? 160 : 150,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(20),
          color: Colors.transparent,
          boxShadow: _isHovered
              ? [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.6),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ]
              : [],
        ),
        child: Center(
          child: GestureDetector(
            onTap: () => _showContactForm(context),
            child: const Text(
              "Contact Me",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Expanded_regular',
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showContactForm(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: ContactMe(),
          contentPadding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        );
      },
    );
  }
}
