import 'package:flutter/material.dart';
import 'package:portfolio/services/theme_provider.dart';
import 'package:provider/provider.dart';


class DarklightConstants extends StatefulWidget {
  const DarklightConstants({super.key});

  @override
  State<DarklightConstants> createState() => _DarklightConstantsState();
}

class _DarklightConstantsState extends State<DarklightConstants> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dark/Light Theme'),
      ),
      body: Center(
        child: Switch(
          value: themeProvider.isDarkMode,
          onChanged: (value) {
            themeProvider.toggleTheme();
          },
        ),
      ),
    );
  }
}
