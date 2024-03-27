import 'package:flutter/material.dart';

const Color _customColor = Color(0xFFA072F6);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.orange,
  Colors.yellow
];

class AppTheme {
  final int selectedColor;
  final Brightness selectedBrightness;

AppTheme( {
  this.selectedColor = 0,
  this.selectedBrightness = Brightness.light
}) :
  assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1, 'Colors must be between 0 and ${_colorThemes.length - 1}'),
  assert(selectedBrightness == Brightness.light || selectedBrightness == Brightness.dark, 'Brightness must be either light or dark');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      brightness: selectedBrightness
    );
  }
}