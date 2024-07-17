import 'package:flutter/material.dart';
import 'package:shoe_app/constants/image.dart';

class BottomView extends StatefulWidget {
  final int selectedIndex;
  final ValueChanged<int> onTap;

  const BottomView(
      {super.key,
      required this.selectedIndex,
      required this.onTap,
      required void Function(int index) onclicked});

  @override
  _BottomViewState createState() => _BottomViewState();
}

class _BottomViewState extends State<BottomView> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.selectedIndex,
      onTap: widget.onTap,
      selectedItemColor: Colors.red[800],
      unselectedItemColor: Colors.white,
      items: [
        BottomNavigationBarItem(
          icon: _buildIcon(menuIcon1),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _buildIcon(searchIcon),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: _buildIcon(person),
          label: 'Person',
        ),
        BottomNavigationBarItem(
          icon: _buildIcon(shopCart),
          label: 'Shop Cart',
        ),
        BottomNavigationBarItem(
          icon: _buildIcon(setting),
          label: 'Settings',
        ),
      ],
    );
  }

  Widget _buildIcon(String imagePath) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          height: 30,
          width: 30,
          child: Image.asset(imagePath),
        ),
      ],
    );
  }
}
