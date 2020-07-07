import 'package:flutter/material.dart' show Color;

Color primaryColorDark = const Color(0xFFB72400);
Color primaryColor = const Color(0xFF000000);
Color primaryColorLight = const Color(0xFFFF8B4F);
Color accentColor = const Color(0xFF6A6A6D);
Color grayColor = const Color(0xFFF1F1F1);
//87cfea  ///medium blue
//c9e9f6  /// lite blue c9e9f6   ////Color.fromARGB(999, 201, 233, 246),
//43b3e0  /// dark blue 43b3e0   // Color.fromARGB(999, 67, 179, 224),

Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}