import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  // Por defecto el tema principal de la aplicación es Light

  bool _isDarkTheme = false;
  bool _isCustomTheme = false;

  bool get isDarkTheme => _isDarkTheme;
  bool get isCustomTheme => _isCustomTheme;

  set isDarkTheme(bool newValue) {
    _isCustomTheme = false;
    _isDarkTheme = newValue;
    notifyListeners();
  }

  set isCustomTheme(bool newValue) {
    _isDarkTheme = false;
    _isCustomTheme = newValue;
    notifyListeners();
  }
}
