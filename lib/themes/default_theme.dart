import 'package:flutter/material.dart';

const List<Color> _colorThemes = [
  Colors.blueGrey,
  Colors.green,
  Colors.red,
];

class DefaultTheme {
  final int selectedColor;

  DefaultTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'El color debe estar entre 0 y ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _colorThemes[selectedColor],
        brightness: Brightness.dark);
  }
}
