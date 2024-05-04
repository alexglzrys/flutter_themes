import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:themes_flutter_app/providers/theme_provider.dart';
import 'package:themes_flutter_app/screens/screens.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          // Provider referente al tema global de la aplicación
          ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ],
        child: const ThemesApp(),
      ),
    );

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
