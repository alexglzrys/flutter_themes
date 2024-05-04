import 'package:flutter/material.dart';
import 'package:themes_flutter_app/screens/screens.dart';

void main() => runApp(const ThemesApp());

class ThemesApp extends StatelessWidget {
  const ThemesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Themes App',
      home: HomeScreen(),
    );
  }
}
