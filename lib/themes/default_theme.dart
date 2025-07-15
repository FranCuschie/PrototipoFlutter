import 'package:flutter/material.dart';

class DefaultTheme {
  ThemeData theme() {
    return ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.dark(),
        brightness: Brightness.dark);
  }
}
