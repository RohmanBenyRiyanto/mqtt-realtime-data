import 'package:flutter/material.dart';

import 'app_color.dart';
import 'app_font.dart';
import 'logic/theme_cubit.dart';

abstract class AppTheme {
  static ThemeData buildTheme(ThemeState state) {
    return state.when(
      light: () => ThemeData(
        scaffoldBackgroundColor: AppColor.background,
        colorScheme: AppColor.lightColorScheme,
        textTheme: AppFont.textTheme(),
      ),
      dark: () => ThemeData(
        scaffoldBackgroundColor: AppColor.darkBackground,
        colorScheme: AppColor.darkColorScheme,
        textTheme: AppFont.textTheme(),
      ),
    );
  }
}
