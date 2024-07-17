import 'package:flutter/material.dart';
import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:portfolio/presentation/home/hom_page.dart';

class Drawers extends StatelessWidget {
  const Drawers({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Color textColor =
        theme.brightness == Brightness.dark ? Colors.white : Colors.black;
    final Color backgroundColor =
        theme.brightness == Brightness.dark ? Colors.black : Colors.white;

    List<CollapsibleItem> items = [
      CollapsibleItem(
        text: 'Home',
        icon: Icons.home,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      CollapsibleItem(
        text: 'About',
        icon: Icons.settings,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      CollapsibleItem(
        text: 'Blogs',
        icon: Icons.contacts,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      CollapsibleItem(
        text: 'Github View',
        icon: Icons.info,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ];

    return CollapsibleSidebar(
      itemPadding: 10, // Reduce the item padding
      screenPadding: 0, // Reduce the screen padding
      topPadding: 0, // Reduce the top padding
      items: items,
      badgeBackgroundColor: backgroundColor,
      avatarImg: AssetImage('assets/images/profileimg.jpg'),
      body: MyHomePage(),
      sidebarBoxShadow: const [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10,
          spreadRadius: 0.01,
          offset: Offset(3, 3),
        ),
      ],
      backgroundColor: backgroundColor,
      textStyle: TextStyle(color: textColor, fontSize: 15),
      title: 'Devesh Tiwari',
      titleStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
      toggleTitleStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
      fitItemsToBottom: true,
    );
  }
}
