    import 'package:flutter/material.dart';
    const Color _customColor = Colors.purple;
    const List<Color> _customThemes = [
      _customColor, 
      Colors.blue,
      Colors.cyan,
      Colors.teal,
      Colors.pink,
      Colors.red,
      Colors.orange,
      Colors.yellow,
    ];

    class AppTheme {
       final int selectedColor;

       AppTheme({this.selectedColor = 0})
        : assert(selectedColor >= 0 && selectedColor < _customThemes.length, 
          "Solo se encuentran colores en un rango de 0 a ${_customThemes.length}");
          ThemeData theme (){
            return ThemeData(
              useMaterial3: true,
              colorSchemeSeed: _customThemes[selectedColor],
            );
          }
    } 