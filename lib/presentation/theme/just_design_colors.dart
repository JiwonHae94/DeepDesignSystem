import 'dart:ui';

import 'package:flutter/material.dart';

class JustDesignColors{
  static Color primaryColorRed = const Color(0xFF990000);
  static Color primaryColorGold = const Color(0xFFFFCC00);
  static Color secondaryColorBlack = Colors.black;
  static Color secondaryColorBlack30 = const Color(0xFFCCCCCC);
  static Color secondaryColorBlack70 = const Color(0xFF767676);
  static Color secondaryColorWhite = Colors.white;
  static Color tertiaryColorCoral = const Color(0xFFF26178);
  static Color tertiaryColorYellow = const Color(0xFFFDE021);
}

extension JustDesignColorExtension on Color {
  Color tint(int degree){
    return withAlpha(degree);
  }
}