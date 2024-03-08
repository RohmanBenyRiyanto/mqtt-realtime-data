import 'package:flutter/material.dart';

import '../../generate/gen/fonts.gen.dart';

abstract class AppFont {
  static TextTheme textTheme() {
    return const TextTheme(
      displayLarge: TextStyle(
        fontFamily: FontFamily.poppins,
        fontWeight: FontWeight.w700,
        fontSize: 96,
        letterSpacing: -1.5,
      ),
      displayMedium: TextStyle(
        fontFamily: FontFamily.poppins,
        fontWeight: FontWeight.w700,
        fontSize: 60,
        letterSpacing: -0.5,
      ),
      displaySmall: TextStyle(
        fontFamily: FontFamily.poppins,
        fontWeight: FontWeight.w700,
        fontSize: 48,
      ),
      headlineLarge: TextStyle(
        fontFamily: FontFamily.poppins,
        fontWeight: FontWeight.w600,
        fontSize: 34,
        letterSpacing: 0.25,
      ),
      headlineMedium: TextStyle(
        fontFamily: FontFamily.poppins,
        fontWeight: FontWeight.w600,
        fontSize: 24,
      ),
      headlineSmall: TextStyle(
        fontFamily: FontFamily.poppins,
        fontWeight: FontWeight.w600,
        fontSize: 20,
        letterSpacing: 0.15,
      ),
      titleLarge: TextStyle(
        fontFamily: FontFamily.poppins,
        fontWeight: FontWeight.w500,
        fontSize: 22,
        letterSpacing: 0.15,
      ),
      titleMedium: TextStyle(
        fontFamily: FontFamily.poppins,
        fontWeight: FontWeight.w500,
        fontSize: 16,
        letterSpacing: 0.15,
      ),
      titleSmall: TextStyle(
        fontFamily: FontFamily.poppins,
        fontWeight: FontWeight.w500,
        fontSize: 14,
        letterSpacing: 0.1,
      ),
      bodyLarge: TextStyle(
        fontFamily: FontFamily.poppins,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        letterSpacing: 0.5,
      ),
      bodyMedium: TextStyle(
        fontFamily: FontFamily.poppins,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        letterSpacing: 0.25,
      ),
      bodySmall: TextStyle(
        fontFamily: FontFamily.poppins,
        fontWeight: FontWeight.w400,
        fontSize: 12,
        letterSpacing: 0.4,
      ),
      labelLarge: TextStyle(
        fontFamily: FontFamily.poppins,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        letterSpacing: 1.25,
      ),
      labelMedium: TextStyle(
        fontFamily: FontFamily.poppins,
        fontWeight: FontWeight.w400,
        fontSize: 12,
        letterSpacing: 1.5,
      ),
      labelSmall: TextStyle(
        fontFamily: FontFamily.poppins,
        fontWeight: FontWeight.w400,
        fontSize: 10,
        letterSpacing: 1.5,
      ),
    );
  }
}
