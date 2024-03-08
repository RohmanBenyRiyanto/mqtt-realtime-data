import 'package:flutter/material.dart';

import '../../core/routing/routing.dart';

/// Text helper
///
/// This class is used to get the text style from the context
///
/// Example:
/// ```dart
/// TextStyle textStyle = TextHelper.headline;
/// ```
abstract class TextHelper {
  static TextStyle get displayLarge => _getFromCtx(_TextStyleType.displayLarge);
  static TextStyle get displayMedium =>
      _getFromCtx(_TextStyleType.displayMedium);
  static TextStyle get displaySmall => _getFromCtx(_TextStyleType.displaySmall);
  static TextStyle get headlineLarge =>
      _getFromCtx(_TextStyleType.headlineLarge);
  static TextStyle get headlineMedium =>
      _getFromCtx(_TextStyleType.headlineMedium);
  static TextStyle get headlineSmall =>
      _getFromCtx(_TextStyleType.headlineSmall);
  static TextStyle get titleLarge => _getFromCtx(_TextStyleType.titleLarge);
  static TextStyle get titleMedium => _getFromCtx(_TextStyleType.titleMedium);
  static TextStyle get titleSmall => _getFromCtx(_TextStyleType.titleSmall);
  static TextStyle get bodyLarge => _getFromCtx(_TextStyleType.bodyLarge);
  static TextStyle get bodyMedium => _getFromCtx(_TextStyleType.bodyMedium);
  static TextStyle get bodySmall => _getFromCtx(_TextStyleType.bodySmall);
  static TextStyle get labelLarge => _getFromCtx(_TextStyleType.labelLarge);
  static TextStyle get labelMedium => _getFromCtx(_TextStyleType.labelMedium);
  static TextStyle get labelSmall => _getFromCtx(_TextStyleType.labelSmall);

  /// Gets the text style from the context
  static TextStyle _getFromCtx(_TextStyleType textStyleType) {
    final BuildContext? context = navKey.currentContext;
    if (context == null) {
      throw Exception("Navigator key context is not available.");
    }
    final ThemeData themeData = Theme.of(context);
    return _getTextStyle(themeData, textStyleType);
  }

  /// Gets the text style based on the text style type
  static TextStyle _getTextStyle(
    ThemeData themeData,
    _TextStyleType textStyleType,
  ) {
    return _getByType(themeData.textTheme, textStyleType);
  }

  /// Defines the text style based on the text style type
  static TextStyle _getByType(TextTheme textTheme, _TextStyleType type) {
    switch (type) {
      case _TextStyleType.displayLarge:
        return textTheme.displayLarge!;
      case _TextStyleType.displayMedium:
        return textTheme.displayMedium!;
      case _TextStyleType.displaySmall:
        return textTheme.displaySmall!;
      case _TextStyleType.headlineLarge:
        return textTheme.headlineLarge!;
      case _TextStyleType.headlineMedium:
        return textTheme.headlineMedium!;
      case _TextStyleType.headlineSmall:
        return textTheme.headlineSmall!;
      case _TextStyleType.titleLarge:
        return textTheme.titleLarge!;
      case _TextStyleType.titleMedium:
        return textTheme.titleMedium!;
      case _TextStyleType.titleSmall:
        return textTheme.titleSmall!;
      case _TextStyleType.bodyLarge:
        return textTheme.bodyLarge!;
      case _TextStyleType.bodyMedium:
        return textTheme.bodyMedium!;
      case _TextStyleType.bodySmall:
        return textTheme.bodySmall!;
      case _TextStyleType.labelLarge:
        return textTheme.labelLarge!;
      case _TextStyleType.labelMedium:
        return textTheme.labelMedium!;
      case _TextStyleType.labelSmall:
        return textTheme.labelSmall!;
      default:
        throw Exception("Unhandled text style type: $type");
    }
  }
}

/// All the available text style types
///
/// See [TextHelper] for more details
enum _TextStyleType {
  displayLarge,
  displayMedium,
  displaySmall,
  headlineLarge,
  headlineMedium,
  headlineSmall,
  titleLarge,
  titleMedium,
  titleSmall,
  bodyLarge,
  bodyMedium,
  bodySmall,
  labelLarge,
  labelMedium,
  labelSmall,
}
