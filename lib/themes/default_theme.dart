import 'package:flutter/material.dart';

const List<Color> _colorThemes = [
  Colors.blueGrey,
  Colors.green,
  Colors.red,
];

class DefaultTheme {
  final int selectedColor;
  final Brightness brightness;

  DefaultTheme({this.selectedColor = 0, required this.brightness})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'El color debe estar entre 0 y ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _colorThemes[selectedColor],
        brightness: brightness);
  }
}
