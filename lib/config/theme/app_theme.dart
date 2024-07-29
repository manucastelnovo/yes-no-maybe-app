import 'package:flutter/material.dart';

const Color customColor = Color(0xFF5C11D4);

const List<Color> _colorTheme = [
  customColor,
  Colors.blue,
  Colors.red,
  Colors.yellow,
  Colors.green,
  Colors.purple,
];

class AppTheme {
  final int selectedColor;
  AppTheme({required this.selectedColor})
      : assert(selectedColor >= 0, 'el color debe ser mayor a 0');
  ThemeData theme() {
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _colorTheme[selectedColor],
        brightness: Brightness.dark);
  }
}
