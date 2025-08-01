import 'package:flutter/material.dart';
import 'package:flutter_application_1/themes/default_theme.dart';

class ThemeNotifier extends ChangeNotifier {
  Brightness _brightness = Brightness.light;

  ThemeData get theme => DefaultTheme(brightness: _brightness).theme();

  bool get isDark => _brightness == Brightness.dark;

  void toggleBrightness(bool isDark) {
    _brightness = isDark ? Brightness.dark : Brightness.light;
    notifyListeners();
  }
}
