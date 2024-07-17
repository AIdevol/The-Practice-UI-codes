import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/constants/text_constants.dart';

class DetailsContainer extends StatefulWidget {
  const DetailsContainer({super.key});

  @override
  _DetailsContainerState createState() => _DetailsContainerState();
}

class _DetailsContainerState extends State<DetailsContainer> {
  bool _isHovered = false;

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Color textColor =
        theme.brightness == Brightness.dark ? Colors.blue : Colors.black;
    final Color borderColor = _isHovered ? Colors.orange : textColor;

    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: GestureDetector(
        onTapDown: (_) => _onHover(true),
        onTapUp: (_) => _onHover(false),
        onTapCancel: () => _onHover(false),
        child: Container(
          width: 380,
          height: 650,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border(
              top: BorderSide(color: borderColor, width: 2.0),
              left: BorderSide(color: borderColor, width: 2.0),
              right: BorderSide(color: borderColor, width: 2.0),
              bottom: BorderSide(color: borderColor, width: 2.0),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  programeSyntax,
                  style: TextStyle(
                    color: textColor,
                    fontFamily: 'Expanded_regular',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const Gap(5),
              Row(
                children: [
                  const Icon(
                    Icons.arrow_right_outlined,
                    color: Colors.orange,
                    size: 30,
                  ),
                  const Gap(5),
                  Text(
                    'Java (Android)',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: 'Expanded_regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  const Gap(10),
                  const Icon(
                    Icons.arrow_right_outlined,
                    color: Colors.orange,
                    size: 30,
                  ),
                  const Gap(5),
                  Text(
                    'Dart (cross-plateform)',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: 'Expanded_regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const Gap(10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Development Frameworks",
                  style: TextStyle(
                    color: textColor,
                    fontFamily: 'Expanded_regular',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const Gap(5),
              Row(
                children: [
                  const Icon(
                    Icons.arrow_right_outlined,
                    color: Colors.orange,
                    size: 30,
                  ),
                  const Gap(5),
                  Text(
                    'Flutter (cross-plateform frameworks)',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: 'Expanded_regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const Gap(10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Familiar IDE',
                  style: TextStyle(
                    color: textColor,
                    fontFamily: 'Expanded_regular',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const Gap(5),
              Row(
                children: [
                  const Icon(
                    Icons.arrow_right_outlined,
                    color: Colors.orange,
                    size: 30,
                  ),
                  const Gap(5),
                  Text(
                    'Xcode',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: 'Expanded_regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  const Gap(10),
                  const Icon(
                    Icons.arrow_right_outlined,
                    color: Colors.orange,
                    size: 30,
                  ),
                  const Gap(5),
                  Text(
                    'Android Studio',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: 'Expanded_regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  const Gap(5),
                  const Icon(
                    Icons.arrow_right_outlined,
                    color: Colors.orange,
                    size: 30,
                  ),
                  const Gap(5),
                  Text(
                    'Vs code',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: 'Expanded_regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const Gap(10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Version Control:",
                  style: TextStyle(
                    color: textColor,
                    fontFamily: 'Expanded_regular',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const Gap(5),
              Row(
                children: [
                  const Icon(
                    Icons.arrow_right_outlined,
                    color: Colors.orange,
                    size: 30,
                  ),
                  const Gap(5),
                  Text(
                    'Github',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: 'Expanded_regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  const Gap(10),
                  const Icon(
                    Icons.arrow_right_outlined,
                    color: Colors.orange,
                    size: 30,
                  ),
                  const Gap(5),
                  Text(
                    'GitLab',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: 'Expanded_regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  const Gap(10),
                  const Icon(
                    Icons.arrow_right_outlined,
                    color: Colors.orange,
                    size: 30,
                  ),
                  const Gap(5),
                  Text(
                    'BitBucket',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: 'Expanded_regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const Gap(10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Backend Integration",
                  style: TextStyle(
                    color: textColor,
                    fontFamily: 'Expanded_regular',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const Gap(5),
              Row(
                children: [
                  const Icon(
                    Icons.arrow_right_outlined,
                    color: Colors.orange,
                    size: 30,
                  ),
                  const Gap(5),
                  Text(
                    'Restful Api',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: 'Expanded_regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  const Gap(10),
                  const Icon(
                    Icons.arrow_right_outlined,
                    color: Colors.orange,
                    size: 30,
                  ),
                  const Gap(5),
                  Text(
                    'Firebase',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: 'Expanded_regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  const Gap(10),
                  const Icon(
                    Icons.arrow_right_outlined,
                    color: Colors.orange,
                    size: 30,
                  ),
                  const Gap(5),
                  Text(
                    'Third party ',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: 'Expanded_regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const Gap(10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "App Distributions",
                  style: TextStyle(
                    color: textColor,
                    fontFamily: 'Expanded_regular',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const Gap(5),
              Row(
                children: [
                  const Icon(
                    Icons.arrow_right_outlined,
                    color: Colors.orange,
                    size: 30,
                  ),
                  const Gap(5),
                  Text(
                    'APP Store(iOS)',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: 'Expanded_regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  const Gap(10),
                  const Icon(
                    Icons.arrow_right_outlined,
                    color: Colors.orange,
                    size: 30,
                  ),
                  const Gap(5),
                  Text(
                    'Google-PlayStore(Andr.)',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: 'Expanded_regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const Gap(10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Push Notifications",
                  style: TextStyle(
                    color: textColor,
                    fontFamily: 'Expanded_regular',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const Gap(5),
              Row(
                children: [
                  const Icon(
                    Icons.arrow_right_outlined,
                    color: Colors.orange,
                    size: 30,
                  ),
                  const Gap(5),
                  Text(
                    'In-app Purchase',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: 'Expanded_regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  const Gap(10),
                  const Icon(
                    Icons.arrow_right_outlined,
                    color: Colors.orange,
                    size: 30,
                  ),
                  const Gap(5),
                  Text(
                    'Paypal',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: 'Expanded_regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  const Gap(10),
                  const Icon(
                    Icons.arrow_right_outlined,
                    color: Colors.orange,
                    size: 30,
                  ),
                  const Gap(5),
                  Text(
                    'Razorpay',
                    style: TextStyle(
                      color: textColor,
                      fontFamily: 'Expanded_regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
