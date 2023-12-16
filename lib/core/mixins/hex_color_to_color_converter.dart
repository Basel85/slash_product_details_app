import 'package:flutter/material.dart';

mixin HexColorToColorConverter {
  Color convertHexColorToColor(String hexColor) {
    hexColor = hexColor.replaceAll("#", "");

    int hexValue = int.parse(hexColor, radix: 16);

    return Color(hexValue | 0xFF000000);
  }
}
