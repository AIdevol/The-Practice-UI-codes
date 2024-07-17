import 'package:flutter/material.dart';
import 'package:portfolio/presentation/controller/homeController.dart';

class SocialListtile extends StatelessWidget {
  const SocialListtile({super.key});

  Widget _rowCircularTile(BuildContext context) {
    final List<ListItem> items = [
      ListItem(title: 'Item 1', icon: Icons.home),
      ListItem(title: 'Item 2', icon: Icons.settings),
      ListItem(title: 'Item 3', icon: Icons.person),
      ListItem(title: 'Item 4', icon: Icons.notifications),
      ListItem(title: 'Item 5', icon: Icons.mail),
    ];
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: items
              .map((item) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          child: Icon(item.icon),
                          radius: 25,
                        ),
                        SizedBox(height: 5),
                        Text(item.title, style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _rowCircularTile(context);
  }
}
