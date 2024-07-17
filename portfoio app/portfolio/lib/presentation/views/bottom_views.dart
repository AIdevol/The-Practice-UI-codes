// // import 'package:flutter/material.dart';

// // class BottomViews extends StatefulWidget {
// //   const BottomViews({super.key});

// //   @override
// //   _BottomViewsState createState() => _BottomViewsState();
// // }

// // class _BottomViewsState extends State<BottomViews> {
// //   bool _isHovered = false;

// //   void _onHover(bool isHovered) {
// //     setState(() {
// //       _isHovered = isHovered;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     final ThemeData theme = Theme.of(context);
// //     final Color textColor = theme.brightness == Brightness.dark
// //         ? Colors.blue
// //         : const Color.fromARGB(255, 190, 186, 186);
// //     final Color borderColor = _isHovered ? Colors.orange : textColor;

// //     return MouseRegion(
// //       onEnter: (_) => _onHover(true),
// //       onExit: (_) => _onHover(false),
// //       child: GestureDetector(
// //         onTapDown: (_) => _onHover(true),
// //         onTapUp: (_) => _onHover(false),
// //         onTapCancel: () => _onHover(false),
// //         child: Column(
// //           children: [
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //               children: [
// //                 Container(
// //                   height: 300,
// //                   width: 300,
// //                   decoration: BoxDecoration(
// //                       borderRadius: BorderRadius.circular(10),
// //                       border: Border.all(color: borderColor, width: 2.0),
// //                       color: textColor,
// //                       boxShadow: <BoxShadow>[
// //                         BoxShadow(
// //                           color: Colors.blue.withOpacity(0.5),
// //                           offset: const Offset(5, 4),
// //                           blurRadius: 16,
// //                         )
// //                       ]),
// //                 ),
// //                 Container(
// //                   height: 300,
// //                   width: 300,
// //                   decoration: BoxDecoration(
// //                       borderRadius: BorderRadius.circular(10),
// //                       border: Border.all(color: borderColor, width: 2.0),
// //                       color: textColor,
// //                       boxShadow: <BoxShadow>[
// //                         BoxShadow(
// //                           color: Colors.blue.withOpacity(0.5),
// //                           offset: const Offset(5, 4),
// //                           blurRadius: 16,
// //                         )
// //                       ]),
// //                 ),
// //                 Container(
// //                   height: 300,
// //                   width: 300,
// //                   decoration: BoxDecoration(
// //                       borderRadius: BorderRadius.circular(10),
// //                       border: Border.all(color: borderColor, width: 2.0),
// //                       color: textColor,
// //                       boxShadow: <BoxShadow>[
// //                         BoxShadow(
// //                           color: Colors.blue.withOpacity(0.5),
// //                           offset: const Offset(5, 4),
// //                           blurRadius: 16,
// //                         )
// //                       ]),
// //                 ),
// //               ],
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import 'package:portfolio/constants/icons.dart';

// class BottomViews extends StatefulWidget {
//   const BottomViews({super.key});

//   @override
//   _BottomViewsState createState() => _BottomViewsState();
// }

// class _BottomViewsState extends State<BottomViews> {
//   List<bool> _isHoveredList = List.filled(3, false);

//   void _onHover(int index, bool isHovered) {
//     setState(() {
//       _isHoveredList[index] = isHovered;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final ThemeData theme = Theme.of(context);
//     final Color textColor =
//         theme.brightness == Brightness.dark ? Colors.blue : Colors.white;

//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             CustomContainer(
//               isHovered: _isHoveredList[0],
//               onHover: (isHovered) => _onHover(0, isHovered),
//               borderColor: _isHoveredList[0] ? Colors.orange : textColor,
//               textColor: textColor,
//               child: Center(
//                   child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     Appicons.homeicon,
//                   ),
//                   Gap(50),
//                   Text(
//                     'Chandigarh, India 134107',
//                     style: TextStyle(
//                         fontFamily: 'Expanded_regular',
//                         color: Colors.black,
//                         fontSize: 15),
//                   )
//                 ],
//               )),
//             ),
//             CustomContainer(
//               isHovered: _isHoveredList[1],
//               onHover: (isHovered) => _onHover(1, isHovered),
//               borderColor: _isHoveredList[1] ? Colors.orange : textColor,
//               textColor: textColor,
//               child: Center(
//                   child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     Appicons.callIcon,
//                     scale: 1,
//                     // color: Colors.grey,
//                   ),
//                   Gap(50),
//                   Text(
//                     '(+91)63888-02100',
//                     style: TextStyle(
//                         fontFamily: 'Expanded_regular',
//                         color: Colors.black,
//                         fontSize: 15),
//                   )
//                 ],
//               )),
//             ),
//             CustomContainer(
//               isHovered: _isHoveredList[2],
//               onHover: (isHovered) => _onHover(2, isHovered),
//               borderColor: _isHoveredList[2] ? Colors.orange : textColor,
//               textColor: textColor,
//               child: const Center(child: Text('View 3')),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

// class CustomContainer extends StatelessWidget {
//   final bool isHovered;
//   final Function(bool) onHover;
//   final Color borderColor;
//   final Color textColor;
//   final Widget child;

//   const CustomContainer({
//     required this.isHovered,
//     required this.onHover,
//     required this.borderColor,
//     required this.textColor,
//     required this.child,
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       onEnter: (_) => onHover(true),
//       onExit: (_) => onHover(false),
//       child: GestureDetector(
//         onTapDown: (_) => onHover(true),
//         onTapUp: (_) => onHover(false),
//         onTapCancel: () => onHover(false),
//         child: AnimatedContainer(
//           duration: const Duration(milliseconds: 300),
//           height: 300,
//           width: 300,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             border: Border.all(color: borderColor, width: 2.0),
//             color: textColor,
//             boxShadow: [
//               BoxShadow(
//                 color: isHovered
//                     ? Colors.orange.withOpacity(0.5)
//                     : Colors.blue.withOpacity(0.5),
//                 offset: const Offset(5, 4),
//                 blurRadius: 16,
//               )
//             ],
//           ),
//           child: child,
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/constants/icons.dart';

class BottomViews extends StatefulWidget {
  const BottomViews({Key? key}) : super(key: key);

  @override
  _BottomViewsState createState() => _BottomViewsState();
}

class _BottomViewsState extends State<BottomViews> {
  List<bool> _isHoveredList = List.filled(3, false);

  void _onHover(int index, bool isHovered) {
    setState(() {
      _isHoveredList[index] = isHovered;
    });
  }

  // @override
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Color textColor = theme.brightness == Brightness.dark
        ? Color.fromARGB(255, 43, 120, 183)
        : Colors.white;

    // Check if the screen size is small (like a phone)
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;

    Widget bottomViewsRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomContainer(
          isHovered: _isHoveredList[0],
          onHover: (isHovered) => _onHover(0, isHovered),
          borderColor: _isHoveredList[0] ? Colors.orange : textColor,
          textColor: textColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Appicons.homeicon),
                Gap(40),
                const Text(
                  'Chandigarh, India 134107',
                  style: TextStyle(
                    fontFamily: 'Expanded_regular',
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
        CustomContainer(
          isHovered: _isHoveredList[1],
          onHover: (isHovered) => _onHover(1, isHovered),
          borderColor: _isHoveredList[1] ? Colors.orange : textColor,
          textColor: textColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Appicons.callIcon,
                  scale: 1,
                ),
                Gap(40),
                Text(
                  '(+91)63888-02100',
                  style: TextStyle(
                    fontFamily: 'Expanded_regular',
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
        CustomContainer(
          isHovered: _isHoveredList[2],
          onHover: (isHovered) => _onHover(2, isHovered),
          borderColor: _isHoveredList[2] ? Colors.orange : textColor,
          textColor: textColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Appicons.workIcon, scale: 1),
                Gap(40),
                Text(
                  'My works',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      // fontWeight: FontWeight.bold,
                      fontFamily: 'Expanded_regular'),
                ),
              ],
            ),
          ),
        ),
      ],
    );

    // If it's a small screen, wrap the Row in a horizontal scrollable view
    if (isSmallScreen) {
      bottomViewsRow = SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: bottomViewsRow,
      );
    }

    return Column(
      children: [
        SizedBox(height: 20),
        bottomViewsRow,
        SizedBox(height: 20),
      ],
    );
  }
}

class CustomContainer extends StatelessWidget {
  final bool isHovered;
  final Function(bool) onHover;
  final Color borderColor;
  final Color textColor;
  final Widget child;

  const CustomContainer({
    required this.isHovered,
    required this.onHover,
    required this.borderColor,
    required this.textColor,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => onHover(true),
      onExit: (_) => onHover(false),
      child: GestureDetector(
        onTapDown: (_) => onHover(true),
        onTapUp: (_) => onHover(false),
        onTapCancel: () => onHover(false),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: borderColor, width: 2.0),
            color: textColor,
            boxShadow: [
              BoxShadow(
                color: isHovered
                    ? Colors.orange.withOpacity(0.5)
                    : Colors.blue.withOpacity(0.5),
                offset: const Offset(5, 4),
                blurRadius: 16,
              ),
            ],
          ),
          child: child,
        ),
      ),
    );
  }
}
