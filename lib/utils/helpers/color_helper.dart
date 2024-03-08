/*
 Copyright 2024 Google LLC

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

      https://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

import 'package:flutter/material.dart';

import '../../core/routing/routing.dart';

/// Color helper
///
/// This class is used to get the color from the context
///
/// Example:
/// ```dart
/// Color color = ColorHelper.primary;
/// ```
abstract class ColorHelper {
  static Color get primary => _getFromCtx(_ColorType.primary);
  static Color get secondary => _getFromCtx(_ColorType.secondary);
  static Color get tertiary => _getFromCtx(_ColorType.tertiary);
  static Color get error => _getFromCtx(_ColorType.error);
  static Color get background => _getFromCtx(_ColorType.background);
  static Color get surfaceVariant => _getFromCtx(_ColorType.surfaceVariant);
  static Color get onPrimary => _getFromCtx(_ColorType.onPrimary);
  static Color get onSecondary => _getFromCtx(_ColorType.onSecondary);
  static Color get onTertiary => _getFromCtx(_ColorType.onTertiary);
  static Color get onError => _getFromCtx(_ColorType.onError);
  static Color get onBackground => _getFromCtx(_ColorType.onBackground);
  static Color get onSurfaceVariant => _getFromCtx(_ColorType.onSurfaceVariant);
  static Color get primaryContainer => _getFromCtx(_ColorType.primaryContainer);
  static Color get secondaryContainer =>
      _getFromCtx(_ColorType.secondaryContainer);
  static Color get tertiaryContainer =>
      _getFromCtx(_ColorType.tertiaryContainer);
  static Color get errorContainer => _getFromCtx(_ColorType.errorContainer);
  static Color get surface => _getFromCtx(_ColorType.surface);
  static Color get outline => _getFromCtx(_ColorType.outline);
  static Color get inverseSurface => _getFromCtx(_ColorType.inverseSurface);
  static Color get onInverseSurface => _getFromCtx(_ColorType.onInverseSurface);
  static Color get onPrimaryContainer =>
      _getFromCtx(_ColorType.onPrimaryContainer);
  static Color get onSecondaryContainer =>
      _getFromCtx(_ColorType.onSecondaryContainer);
  static Color get onTertiaryContainer =>
      _getFromCtx(_ColorType.onTertiaryContainer);
  static Color get onErrorContainer => _getFromCtx(_ColorType.onErrorContainer);
  static Color get outlineVariant => _getFromCtx(_ColorType.outlineVariant);
  static Color get onSurface => _getFromCtx(_ColorType.onSurface);
  static Color get surfaceContainer => _getFromCtx(_ColorType.surfaceContainer);

  /// Gets the color from the context
  static Color _getFromCtx(_ColorType colorType) {
    final BuildContext? context = navKey.currentContext;
    if (context == null) {
      throw Exception("Navigator key context is not available.");
    }
    final ThemeData themeData = Theme.of(context);
    final ColorScheme colorScheme = themeData.colorScheme;
    return _getColor(colorScheme: colorScheme, colorType: colorType);
  }

  /// Gets the color based on the color scheme
  static Color _getColor({
    required ColorScheme colorScheme,
    required _ColorType colorType,
  }) {
    return _getByType(colorScheme, colorType);
  }

  /// Defines the color based on the color type
  static Color _getByType(ColorScheme colorScheme, _ColorType type) {
    switch (type) {
      case _ColorType.primary:
        return colorScheme.primary;
      case _ColorType.secondary:
        return colorScheme.secondary;
      case _ColorType.tertiary:
        return colorScheme.tertiary;
      case _ColorType.error:
        return colorScheme.error;
      case _ColorType.background:
        return colorScheme.background;
      case _ColorType.surfaceVariant:
        return colorScheme.surfaceVariant;
      case _ColorType.onPrimary:
        return colorScheme.onPrimary;
      case _ColorType.onSecondary:
        return colorScheme.onSecondary;
      case _ColorType.onTertiary:
        return colorScheme.onTertiary;
      case _ColorType.onError:
        return colorScheme.onError;
      case _ColorType.onBackground:
        return colorScheme.onBackground;
      case _ColorType.onSurfaceVariant:
        return colorScheme.onSurfaceVariant;
      case _ColorType.primaryContainer:
        return colorScheme.primaryContainer;
      case _ColorType.secondaryContainer:
        return colorScheme.secondaryContainer;
      case _ColorType.tertiaryContainer:
        return colorScheme.tertiaryContainer;
      case _ColorType.errorContainer:
        return colorScheme.errorContainer;
      case _ColorType.surface:
        return colorScheme.surface;
      case _ColorType.outline:
        return colorScheme.outline;
      case _ColorType.inverseSurface:
        return colorScheme.inverseSurface;
      case _ColorType.onInverseSurface:
        return colorScheme.onInverseSurface;
      case _ColorType.onPrimaryContainer:
        return colorScheme.onPrimaryContainer;
      case _ColorType.onSecondaryContainer:
        return colorScheme.onSecondaryContainer;
      case _ColorType.onTertiaryContainer:
        return colorScheme.onTertiaryContainer;
      case _ColorType.onErrorContainer:
        return colorScheme.onErrorContainer;
      case _ColorType.outlineVariant:
        return colorScheme.outlineVariant;
      case _ColorType.onSurface:
        return colorScheme.onSurface;
      case _ColorType.surfaceContainer:
        return colorScheme.surfaceTint;
      default:
        throw Exception("Unhandled color type: $type");
    }
  }
}

/// All the available color types
///
/// See [ColorHelper] for more details
enum _ColorType {
  primary,
  secondary,
  tertiary,
  error,
  background,
  surfaceVariant,
  onPrimary,
  onSecondary,
  onTertiary,
  onError,
  onBackground,
  onSurfaceVariant,
  primaryContainer,
  secondaryContainer,
  tertiaryContainer,
  errorContainer,
  surface,
  outline,
  inverseSurface,
  onInverseSurface,
  onPrimaryContainer,
  onSecondaryContainer,
  onTertiaryContainer,
  onErrorContainer,
  outlineVariant,
  onSurface,
  surfaceContainer,
}
