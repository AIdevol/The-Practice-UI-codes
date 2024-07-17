// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import 'package:portfolio/constants/icons.dart';
// import 'package:portfolio/constants/text_constants.dart';

// class AboutMe extends StatelessWidget {
//   const AboutMe({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final ThemeData theme = Theme.of(context);
//     final Color textColor =
//         theme.brightness == Brightness.dark ? Colors.white : Colors.black;

//     return LayoutBuilder(
//       builder: (context, constraints) {
//         // Determine padding based on the screen width
//         double horizontalPadding = constraints.maxWidth > 600 ? 32.0 : 16.0;
//         double verticalGap = constraints.maxWidth > 600 ? 20.0 : 15.0;

//         return Center(
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   const Text(
//                     'About Me',
//                     style: TextStyle(
//                       color: Colors.blue,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 30,
//                     ),
//                   ),
//                   Text(
//                     'Get to Know me:)',
//                     style: TextStyle(
//                       color: textColor,
//                       fontSize: 12,
//                     ),
//                   ),
//                   Gap(verticalGap),
//                   const Text(
//                     'Who am I?',
//                     style: TextStyle(
//                       color: Colors.blue,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 30,
//                     ),
//                   ),
//                   Gap(verticalGap),
//                   Text(
//                     aboutstr,
//                     style: TextStyle(
//                       color: textColor,
//                       fontSize: 15,
//                       fontFamily: 'Roboto',
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                   Gap(verticalGap),
//                   const Text(
//                     "Technologies I have worked with: ",
//                     style: TextStyle(
//                       color: Colors.blue,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                     ),
//                   ),
//                   Gap(verticalGap),
//                   _buildTechnologicalInformations(
//                       context, constraints.maxWidth),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildTechnologicalInformations(
//       BuildContext context, double maxWidth) {
//     final List<String> techImages = [
//       AppImages.dart,
//       AppImages.flutter,
//       AppImages.java,
//       AppImages.javascript,
//       AppImages.python,
//       AppImages.firebase,
//       AppImages.git,
//       AppImages.github1,
//       AppImages.bitbucket,
//       AppImages.android,
//       AppImages.ios,
//       AppImages.gitlab,
//       AppImages.django,
//       AppImages.aws,
//       AppImages.machinelearning1,
//       AppImages.paypal,
//       AppImages.stripe,
//       AppImages.razorpay
//     ];

//     double iconSize = maxWidth > 600 ? 100.0 : 80.0;

//     return SizedBox(
//       height: iconSize + 20, // Adjust the height of the list based on icon size
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: techImages.length,
//         itemBuilder: (context, index) {
//           return AnimatedWalkingIcon(
//             imagePath: techImages[index],
//             iconSize: iconSize,
//           );
//         },
//       ),
//     );
//   }
// }

// class AnimatedWalkingIcon extends StatefulWidget {
//   final String imagePath;
//   final double iconSize;

//   const AnimatedWalkingIcon({
//     required this.imagePath,
//     required this.iconSize,
//     Key? key,
//   }) : super(key: key);

//   @override
//   _AnimatedWalkingIconState createState() => _AnimatedWalkingIconState();
// }

// class _AnimatedWalkingIconState extends State<AnimatedWalkingIcon>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<Offset> _animation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(seconds: 2),
//       vsync: this,
//     )..repeat(reverse: true);

//     _animation = Tween<Offset>(
//       begin: Offset.zero,
//       end: const Offset(0.2, 0),
//     ).animate(CurvedAnimation(
//       parent: _controller,
//       curve: Curves.easeInOut,
//     ));
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       child: SlideTransition(
//         position: _animation,
//         child: Center(
//           child: Container(
//             width: widget.iconSize,
//             height: widget.iconSize,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage(widget.imagePath),
//                 fit: BoxFit.contain,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/constants/icons.dart';
import 'package:portfolio/constants/text_constants.dart';
import 'package:portfolio/presentation/views/details_container.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Color textColor =
        theme.brightness == Brightness.dark ? Colors.white : Colors.black;

    return LayoutBuilder(
      builder: (context, constraints) {
        // Determine padding based on the screen width
        double horizontalPadding = constraints.maxWidth > 600 ? 32.0 : 16.0;
        double verticalGap = constraints.maxWidth > 600 ? 20.0 : 15.0;

        return Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text(
                    'About Me',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    'Get to Know me :)',
                    style: TextStyle(
                      color: textColor,
                      fontSize: 12,
                    ),
                  ),
                  Gap(verticalGap),
                  const Text(
                    'Who am I?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  Gap(verticalGap),
                  Text(
                    aboutstr,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 15,
                      fontFamily: 'Expanded_regular',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Gap(verticalGap),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // const DetailsContainer(),
                      DetailsContainer(),
                      // DetailsContainer(),
                    ],
                  ),
                  Gap(verticalGap),
                  const Text(
                    "Technologies I have worked with: ",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Gap(verticalGap),
                  _buildTechnologicalInformations(constraints.maxWidth),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildTechnologicalInformations(double maxWidth) {
    final List<String> techImages = [
      AppImages.dart,
      AppImages.flutter,
      AppImages.java,
      AppImages.javascript,
      AppImages.python,
      AppImages.firebase,
      AppImages.git,
      AppImages.github1,
      AppImages.bitbucket,
      AppImages.android,
      AppImages.ios,
      AppImages.gitlab,
      AppImages.django,
      AppImages.aws,
      AppImages.machinelearning1,
      AppImages.paypal,
      AppImages.stripe,
      AppImages.razorpay
    ];

    double iconSize = maxWidth > 600 ? 100.0 : 80.0;

    return SizedBox(
      height: iconSize + 20, // Adjust the height of the list based on icon size
      child: ContinuousScrollingIcons(
        techImages: techImages,
        iconSize: iconSize,
      ),
    );
  }
}

Widget _buildImageontainer(BuildContext context) {
  final ThemeData theme = Theme.of(context);
  final Color textColor =
      theme.brightness == Brightness.dark ? Colors.blue : Colors.black;

  return Container(
    width: 500,
    height: 500,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border(
          top: BorderSide(color: textColor, width: 2.0),
          left: BorderSide(color: textColor, width: 2.0),
          right: BorderSide(color: textColor, width: 2.0),
          bottom: BorderSide(color: textColor, width: 2.0),
        )),
    child: const Column(
      children: [
        Text(
          programeSyntax,
          style: TextStyle(color: Colors.black),
        )
      ],
    ),
  );
}

class ContinuousScrollingIcons extends StatefulWidget {
  final List<String> techImages;
  final double iconSize;

  const ContinuousScrollingIcons({
    required this.techImages,
    required this.iconSize,
    Key? key,
  }) : super(key: key);

  @override
  _ContinuousScrollingIconsState createState() =>
      _ContinuousScrollingIconsState();
}

class _ContinuousScrollingIconsState extends State<ContinuousScrollingIcons>
    with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  late double _scrollPosition;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollPosition = 0;
    WidgetsBinding.instance.addPostFrameCallback((_) => _startScrolling());
  }

  void _startScrolling() {
    final double maxScrollExtent = _scrollController.position.maxScrollExtent;
    final double minScrollExtent = _scrollController.position.minScrollExtent;

    Future.delayed(Duration.zero).then((_) async {
      while (true) {
        await _scrollController.animateTo(
          maxScrollExtent,
          duration: const Duration(seconds: 10),
          curve: Curves.linear,
        );
        await _scrollController.animateTo(
          minScrollExtent,
          duration: const Duration(seconds: 10),
          curve: Curves.linear,
        );
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      scrollDirection: Axis.horizontal,
      itemCount: widget.techImages.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            width: widget.iconSize,
            height: widget.iconSize,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.techImages[index]),
                fit: BoxFit.contain,
              ),
            ),
          ),
        );
      },
    );
  }
}
