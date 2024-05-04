import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:themes_flutter_app/providers/theme_provider.dart';
import 'package:themes_flutter_app/screens/screens.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          // Provider referente al tema global de la aplicación
          // El parámmetro que recibe el constructor hace referencia al indicar de tema seleccionado por el usuario (este se puede encontrar almacenado en las preferencias del usuario)
          ChangeNotifierProvider(create: (_) => ThemeProvider(2)),
        ],
        child: const ThemesApp(),
      ),
    );

class ThemesApp extends StatelessWidget {
  const ThemesApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Themes App',
      home: const HomeScreen(),
      theme: themeProvider.currentTheme,
    );
  }
}
