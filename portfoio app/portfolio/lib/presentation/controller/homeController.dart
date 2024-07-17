import 'package:flutter/material.dart';

class ListItem{
  final String title;
  final IconData icon;

  ListItem({required this.title, required this.icon});
}

    final List<ListItem> items = [
    ListItem(title: 'Item 1', icon: Icons.home),
    ListItem(title: 'Item 2', icon: Icons.settings),
    ListItem(title: 'Item 3', icon: Icons.person),
    ListItem(title: 'Item 4', icon: Icons.notifications),
    ListItem(title: 'Item 5', icon: Icons.mail),
  ];
  
 final List<_ChartData> chartData = [
    _ChartData('Web Design', 80),
    _ChartData('Graphic Design', 70),
    _ChartData('Wordpress', 85),
    _ChartData('Marketing', 95),
    _ChartData('UXUI Design', 75),
    _ChartData('Web Development', 85),
    _ChartData('Photoshop', 90),
    _ChartData('Illustrator', 65),
  ];

 const colorizeColors = [
    Colors.black,
    Colors.blue,
    Colors.yellow,
    Colors.deepOrangeAccent,
    Colors.black,
  ];
    class _ChartData {
  final String skill;
  final int percentage;

  _ChartData(this.skill, this.percentage);
}
