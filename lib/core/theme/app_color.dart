import 'package:flutter/material.dart';

abstract interface class AppColor {
  //? Light Theme Colors
  static const Color primary = Color(0xFF8B418F);
  static const Color secondary = Color(0xFFA23F16);
  static const Color tertiary = Color(0xFF006780);
  static const Color error = Color(0xFFBA1A1A);
  static const Color background = Color(0xFFFCFCFC);
  static const Color surfaceVariant = Color(0xFFEDDEE8);
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color onSecondary = Color(0xFFFFFFFF);
  static const Color onTertiary = Color(0xFFFFFFFF);
  static const Color onError = Color(0xFFFFFFFF);
  static const Color onBackground = Color(0xFF201A1B);
  static const Color onSurfaceVariant = Color(0xFF4D444C);
  static const Color primaryContainer = Color(0xFFFFD6FA);
  static const Color secondaryContainer = Color(0xFFFFDBCF);
  static const Color tertiaryContainer = Color(0xFFB8EAFF);
  static const Color errorContainer = Color(0xFFFFDAD6);
  static const Color surface = Color(0xFFFCFCFC);
  static const Color outline = Color(0xFF7F747C);
  static const Color inverseSurface = Color(0xFF362F30);
  static const Color onInverseSurface = Color(0xFFFAEEEF);
  static const Color onPrimaryContainer = Color(0xFF36003C);
  static const Color onSecondaryContainer = Color(0xFF380D00);
  static const Color onTertiaryContainer = Color(0xFF001F28);
  static const Color onErrorContainer = Color(0xFF410002);
  static const Color outlineVariant = Color(0xFFD8C2C5);
  static const Color onSurface = Color(0xFF201A1B);
  static const Color surfaceTint = Color(0xFFF3EDF7);

  //? Dark Theme Colors
  static const Color darkPrimary = Color(0xFFFFA9FE);
  static const Color darkSecondary = Color(0xFFFFB59B);
  static const Color darkTertiary = Color(0xFF5DD5FC);
  static const Color darkError = Color(0xFFFFB4AB);
  static const Color darkBackground = Color(0xFF201A1B);
  static const Color darkSurfaceVariant = Color(0xFF4D444C);
  static const Color darkOnPrimary = Color(0xFF560A5D);
  static const Color darkOnSecondary = Color(0xFF5B1A00);
  static const Color darkOnTertiary = Color(0xFF003544);
  static const Color darkOnError = Color(0xFF690005);
  static const Color darkOnBackground = Color(0xFFECDFE0);
  static const Color darkOnSurfaceVariant = Color(0xFFD0C3CC);
  static const Color darkPrimaryContainer = Color(0xFF702776);
  static const Color darkSecondaryContainer = Color(0xFF812800);
  static const Color darkTertiaryContainer = Color(0xFF004D61);
  static const Color darkErrorContainer = Color(0xFF93000A);
  static const Color darkSurface = Color(0xFF201A1B);
  static const Color darkOutline = Color(0xFF998D96);
  static const Color darkInverseSurface = Color(0xFFECDFE0);
  static const Color darkOnInverseSurface = Color(0xFF201A1B);
  static const Color darkOnPrimaryContainer = Color(0xFFFFD6FA);
  static const Color darkOnSecondaryContainer = Color(0xFFFFDBCF);
  static const Color darkOnTertiaryContainer = Color(0xFFB8EAFF);
  static const Color darkOnErrorContainer = Color(0xFFFFDAD6);
  static const Color darkOutlineVariant = Color(0xFF998D96);
  static const Color darkOnSurface = Color(0xFFECDFE0);
  static const Color darkSurfaceTint = Color(0xFF211F26);

  //? Color Scheme for Light Theme
  static ColorScheme get lightColorScheme => ColorScheme.fromSeed(
        seedColor: AppColor.primary,
        primary: AppColor.primary,
        secondary: AppColor.secondary,
        tertiary: AppColor.tertiary,
        error: AppColor.error,
        background: AppColor.background,
        surfaceVariant: AppColor.surfaceVariant,
        onPrimary: AppColor.onPrimary,
        onSecondary: AppColor.onSecondary,
        onTertiary: AppColor.onTertiary,
        onError: AppColor.onError,
        onBackground: AppColor.onBackground,
        onSurfaceVariant: AppColor.onSurfaceVariant,
        primaryContainer: AppColor.primaryContainer,
        secondaryContainer: AppColor.secondaryContainer,
        tertiaryContainer: AppColor.tertiaryContainer,
        errorContainer: AppColor.errorContainer,
        surface: AppColor.surface,
        outline: AppColor.outline,
        inverseSurface: AppColor.inverseSurface,
        onInverseSurface: AppColor.onInverseSurface,
        onPrimaryContainer: AppColor.onPrimaryContainer,
        onSecondaryContainer: AppColor.onSecondaryContainer,
        onTertiaryContainer: AppColor.onTertiaryContainer,
        onErrorContainer: AppColor.onErrorContainer,
        outlineVariant: AppColor.outlineVariant,
        onSurface: AppColor.onSurface,
        surfaceTint: AppColor.surfaceTint,
      );

  //? Color Scheme for Dark Theme
  static ColorScheme get darkColorScheme => ColorScheme.fromSeed(
        seedColor: AppColor.darkPrimary,
        primary: AppColor.darkPrimary,
        secondary: AppColor.darkSecondary,
        tertiary: AppColor.darkTertiary,
        error: AppColor.darkError,
        background: AppColor.darkBackground,
        surfaceVariant: AppColor.darkSurfaceVariant,
        onPrimary: AppColor.darkOnPrimary,
        onSecondary: AppColor.darkOnSecondary,
        onTertiary: AppColor.darkOnTertiary,
        onError: AppColor.darkOnError,
        onBackground: AppColor.darkOnBackground,
        onSurfaceVariant: AppColor.darkOnSurfaceVariant,
        primaryContainer: AppColor.darkPrimaryContainer,
        secondaryContainer: AppColor.darkSecondaryContainer,
        tertiaryContainer: AppColor.darkTertiaryContainer,
        errorContainer: AppColor.darkErrorContainer,
        surface: AppColor.darkSurface,
        outline: AppColor.darkOutline,
        inverseSurface: AppColor.darkInverseSurface,
        onInverseSurface: AppColor.darkOnInverseSurface,
        onPrimaryContainer: AppColor.darkOnPrimaryContainer,
        onSecondaryContainer: AppColor.darkOnSecondaryContainer,
        onTertiaryContainer: AppColor.darkOnTertiaryContainer,
        onErrorContainer: AppColor.darkOnErrorContainer,
        outlineVariant: AppColor.darkOutlineVariant,
        onSurface: AppColor.darkOnSurface,
        surfaceTint: AppColor.darkSurfaceTint,
      );
}
