import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/constants/icons.dart';
import 'package:portfolio/constants/text_constants.dart';
import 'package:portfolio/presentation/controller/homeController.dart';
import 'package:portfolio/presentation/views/about_me.dart';
import 'package:portfolio/presentation/views/appbar.dart';
import 'package:portfolio/presentation/views/bottom_views.dart';
import 'package:portfolio/presentation/views/buttons.dart';
import 'package:portfolio/presentation/views/carousal_view.dart';
import 'package:portfolio/presentation/views/flipcard_expansion.dart';
import 'package:portfolio/presentation/views/social_icons.dart';
import 'package:portfolio/presentation/views/social_listtile.dart'; // Corrected import name
import 'package:portfolio/presentation/views/sync_fusion_charts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isHovered = false;
  static const colorizeColors = [
    Colors.black,
    Colors.blue,
    Colors.yellow,
    Colors.deepOrangeAccent,
    Colors.black,
  ];

  static const colorizeTextStyle = TextStyle(
    fontSize: 40.0,
    fontWeight: FontWeight.w700,
    fontFamily: 'ClassicStroke',
  );

  final ScrollController _scrollController = ScrollController();
  bool _showBackToTopButton = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.offset >= 300) {
        setState(() {
          _showBackToTopButton = true;
        });
      } else {
        setState(() {
          _showBackToTopButton = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(seconds: 1), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Color textColor =
        theme.brightness == Brightness.dark ? Colors.white : Colors.black;

    return Scaffold(
      appBar: Appbar(),
      body: Stack(
        children: [
          ListView(
            controller: _scrollController,
            children: [
              Stack(
                children: [_buildBackground(), _buildIntroPages(context)],
              ),
              Gap(20),
              Center(child: _buildAboutSection(context)),
              Gap(40),
              BottomViews(),
              // Center(
              //   child: SyncFusionCharts(
              //     chartData: chartData,
              //   ),
              // ),
              // Gap(20),
              // SizedBox(child: const CarousalView()), // Assuming CarousalView is implemented correctly
              // Gap(20),
              // _buildIconSection(context),
              // Gap(20),
              // _buildButtons(),
              Gap(30),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 16.0),
                  child: Column(
                    children: [
                      Text(
                        '@all rights reserved',
                        style: TextStyle(
                            fontFamily: 'Expanded_regular', fontSize: 12),
                      ),
                      Text(
                        "Developed With 💌 $flutter",
                        style: TextStyle(
                          color: textColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          if (_showBackToTopButton)
            Positioned(
              bottom: 16.0,
              right: 16.0,
              child: FloatingActionButton(
                onPressed: _scrollToTop,
                child: const Icon(
                  Icons.arrow_upward,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                  side: const BorderSide(color: Colors.transparent, width: 2),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildBackground() {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(40),
        bottomRight: Radius.circular(40),
      ),
      child: Container(
        width: double.infinity,
        height: 600,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
            color: Colors.black54,
          ),
        ),
      ),
    );
  }

  Widget _buildIntroPages(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 600,
        maxWidth: double.infinity,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
        color: Colors.transparent,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/profileimg.jpg'),
              radius: 80,
            ),
            const Gap(10),
            AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                ColorizeAnimatedText('Devesh Tiwari',
                    textStyle: colorizeTextStyle,
                    speed: const Duration(milliseconds: 500),
                    colors: colorizeColors,
                    textAlign: TextAlign.center),
                ColorizeAnimatedText('Building Things',
                    textStyle: colorizeTextStyle,
                    speed: const Duration(milliseconds: 500),
                    colors: colorizeColors,
                    textAlign: TextAlign.center),
              ],
              isRepeatingAnimation: true,
              onTap: () {
                print("Tap Event");
              },
            ),
            const Gap(10),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '</>',
                    style: TextStyle(color: Colors.blue),
                  ),
                  const Gap(10),
                  DefaultTextStyle(
                      style: TextStyle(
                          fontSize: 15.0, fontFamily: 'Expanded_regular'),
                      child: AnimatedTextKit(
                        totalRepeatCount: 10,
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'I am a Flutter Developer..',
                            speed: Duration(milliseconds: 500),
                          ),
                        ],
                        onTap: () {
                          print('Tap Event');
                        },
                      )),
                ],
              ),
            ),
            // const Text(
            //   'I am a Flutter Developer..',
            //   style: TextStyle(color: Colors.white),
            // ),
            const Gap(18),
            _buildSocialIcons(),
            const Gap(35),
            _buildButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialIcons() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: FacebookButton(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: TwitterButton(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: InstagramButton(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: TelegramButton(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: WhatsappButton(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: LinkedinButton(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: MediumButton(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: HashnodeButton(),
        ),
      ],
    );
  }

  Widget _buildButtons() {
    return const Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ButtonView(),
          Gap(50),
          ButtonView2(),
        ],
      ),
    );
  }

  Widget _buildAboutSection(BuildContext context) {
    return const AboutMe();
  }

  Widget _buildIconSection(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const SocialListtile(),
    );
  }

  // Widget _buildFlipcartExpansion(BuildContext context) {
  //   return FlipcardExpansion(
  //     frontText: '',
  //     backText: '',
  //     cardColor: Colors.red,
  //   );
  // }
}

class _ChartData {
  final String skill;
  final int percentage;

  _ChartData(this.skill, this.percentage);
}
