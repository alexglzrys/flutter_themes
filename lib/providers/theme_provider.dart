import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  // Por defecto el tema principal de la aplicación es Light

  bool _isDarkTheme = false;
  bool _isCustomTheme = false;
  late ThemeData _currentTheme;

  // Configuración personalizada para widgets en tema oscuro
  final configDark = {
    'iconColor': Colors.grey[500],
    'titleTile': Colors.grey[500],
    'switchAColor': Colors.teal,
  };

  // Configuración personalizada para widgets en tema claro
  final configLight = {
    'iconColor': const Color(0xff5F1A37),
    'titleTile': Colors.grey[900],
    'switchAColor': const Color(0xff5F1A37),
  };

  // El constructor se encargará de establecer el tema al momento de arrancar la aplicación
  ThemeProvider(int selectedTheme) {
    switch (selectedTheme) {
      // Tema por defecto
      case 1:
        _isDarkTheme = false;
        _isCustomTheme = false;
        _currentTheme = ThemeData.light();
        break;
      // Tema Dark
      case 2:
        _isDarkTheme = true;
        _isCustomTheme = false;
        _currentTheme = ThemeData.dark();
        break;
      // Tema personalizado
      case 3:
        _isDarkTheme = false;
        _isCustomTheme = true;
        _currentTheme = ThemeData.light();
        break;
    }
  }

  bool get isDarkTheme => _isDarkTheme;
  bool get isCustomTheme => _isCustomTheme;
  ThemeData get currentTheme => _currentTheme;

  set isDarkTheme(bool newValue) {
    _isCustomTheme = false;
    _isDarkTheme = newValue;

    // Cambiar tema
    if (newValue) {
      // Selecciono el tema Dark como activo en la aplicación
      _currentTheme = ThemeData.dark();
    } else {
      // Desactivó el tema Dark, por tanto dejamos el tema por defecto
      _currentTheme = ThemeData.light();
    }

    notifyListeners();
  }

  set isCustomTheme(bool newValue) {
    _isDarkTheme = false;
    _isCustomTheme = newValue;

    // Cambiar tema
    if (newValue) {
      // Selecciono el tema Personalizado como activo en la aplicación (Este tema se basa en el modo claro)
      _currentTheme = ThemeData.light();
    } else {
      // Desactivó el tema Personalizado, por tanto dejamos el tema por defecto
      _currentTheme = ThemeData.light();
    }

    notifyListeners();
  }
}
