import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/presentation/home/hom_page.dart';
import 'package:portfolio/presentation/views/about_me.dart';
import 'package:portfolio/presentation/views/github_view.dart';
import 'package:portfolio/services/auth/url_launcher.dart';
import 'package:portfolio/services/auth/url_links.dart';
import 'package:portfolio/services/theme_provider.dart';
import 'package:provider/provider.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final ThemeData theme = Theme.of(context);
    final Color textColor =
        theme.brightness == Brightness.dark ? Colors.white : Colors.black;

    return LayoutBuilder(
      builder: (context, constraints) {
        return AppBar(
          shadowColor: Colors.blueGrey,
          elevation: 5,
          title: Text(
            'Devesh Tiwari',
            style: TextStyle(
              fontFamily: 'ClassicStroke',
              fontSize: constraints.maxWidth > 600 ? 24 : 20,
            ),
          ),
          // leading: Builder(
          //   builder: (BuildContext context) {
          //     return IconButton(
          //       icon: const Icon(Icons.menu),
          //       onPressed: () {
          //         Scaffold.of(context).openDrawer();
          //       },
          //     );
          //   },
          // ),
          actions: [
            if (constraints.maxWidth > 600)
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage()));
                    },
                    child: Text(
                      'Home',
                      style: TextStyle(
                          color: textColor, fontFamily: 'Expanded_regular'),
                    ),
                  ),
                  TextButton(
                    onPressed: () => UrlLauncherHelper.launchUrl(githubLink),
                    //  {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const GithubView()),
                    //   );
                    // },
                    child: Text(
                      'Github',
                      style: TextStyle(
                          color: textColor, fontFamily: 'Expanded_regular'),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // themeProvider.toggleTheme();
                      // Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const AboutMe()),
                      // );
                    },
                    child: Text(
                      'Services',
                      style: TextStyle(
                          color: textColor, fontFamily: 'Expanded_regular'),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Technologies',
                      style: TextStyle(
                          color: textColor, fontFamily: 'Expanded_regular'),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Contact',
                      style: TextStyle(
                          color: textColor, fontFamily: 'Expanded_regular'),
                    ),
                  ),
                  const Gap(8),
                  ThemeSwitcher(themeProvider: themeProvider),
                  const Gap(12),
                ],
              )
            else
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  _showPopupMenu(context, textColor, themeProvider);
                },
              ),
          ],
        );
      },
    );
  }

  void _showPopupMenu(
      BuildContext context, Color textColor, ThemeProvider themeProvider) {
    showMenu(
      context: context,
      position: const RelativeRect.fromLTRB(100, 80, 0, 0),
      items: [
        PopupMenuItem(
          child: Text(
            'Home',
            style: TextStyle(color: textColor, fontFamily: 'Expanded_regular'),
          ),
        ),
        PopupMenuItem(
          child: Text(
            'Github',
            style: TextStyle(color: textColor, fontFamily: 'Expanded_regular'),
          ),
          onTap: () {},
        ),
        PopupMenuItem(
          child: Text(
            'Services',
            style: TextStyle(color: textColor, fontFamily: 'Expanded_regular'),
          ),
          onTap: () {},
        ),
        PopupMenuItem(
          child: Text(
            'Technologies',
            style: TextStyle(color: textColor, fontFamily: 'Expanded_regular'),
          ),
          onTap: () {},
        ),
        PopupMenuItem(
          child: Text(
            'Contact',
            style: TextStyle(color: textColor, fontFamily: 'Expanded_regular'),
          ),
          onTap: () {},
        ),
        PopupMenuItem(
          child: ThemeSwitcher(themeProvider: themeProvider),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class ThemeSwitcher extends StatefulWidget {
  final ThemeProvider themeProvider;

  const ThemeSwitcher({Key? key, required this.themeProvider})
      : super(key: key);

  @override
  _ThemeSwitcherState createState() => _ThemeSwitcherState();
}

class _ThemeSwitcherState extends State<ThemeSwitcher>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _rotationAnimation;
  late Animation<Alignment> _alignmentAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _rotationAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    _alignmentAnimation = AlignmentTween(
      begin: widget.themeProvider.isDarkMode
          ? Alignment.centerRight
          : Alignment.centerLeft,
      end: widget.themeProvider.isDarkMode
          ? Alignment.centerLeft
          : Alignment.centerRight,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleTheme() {
    setState(() {
      widget.themeProvider.toggleTheme();
      if (_animationController.status == AnimationStatus.completed) {
        _animationController.reverse();
      } else {
        _animationController.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleTheme,
      child: Container(
        width: 65,
        height: 25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color:
              widget.themeProvider.isDarkMode ? Colors.blue : Colors.grey[400],
        ),
        child: Stack(
          children: [
            AnimatedBuilder(
              animation: _alignmentAnimation,
              builder: (context, child) {
                return Align(
                  alignment: _alignmentAnimation.value,
                  child: Container(
                    width: 22,
                    height: 22,
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                );
              },
            ),
            Center(
              child: RotationTransition(
                turns: _rotationAnimation,
                child: Icon(
                  widget.themeProvider.isDarkMode
                      ? Icons.nightlight_round
                      : Icons.wb_sunny,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
