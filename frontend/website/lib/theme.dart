import 'package:flutter/material.dart';

class FouramLabsTheme {
  static const Color background = Color(0xFF05070A);
  static const Color surface = Color(0xFF0A0E13);
  static const Color primary = Color(0xFF00A8FF);
  static const Color border = Color(0xFF202731);
  static const Color textSecondary = Color(0xFF9AA4B2);

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,

      scaffoldBackgroundColor: background,

      colorScheme: ColorScheme.fromSeed(
        seedColor: primary,
        brightness: Brightness.dark,
      ),

      fontFamily: 'Arial',

      appBarTheme: const AppBarTheme(
        backgroundColor: background,
        elevation: 0,
      ),

      textTheme: const TextTheme(
        bodyMedium: TextStyle(
          color: textSecondary,
          fontSize: 16,
        ),
      ),
    );
  }
}