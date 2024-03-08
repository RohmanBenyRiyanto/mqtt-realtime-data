// ignore_for_file: constant_identifier_names

import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';

enum LogColor {
  DEFAULT,
  RED,
  GREEN,
  YELLOW,
  BLUE,
  MAGENTA,
  CYAN,
  WHITE,
}

final class Logger {
  static void log(String message, {LogColor color = LogColor.DEFAULT}) {
    if (kDebugMode) {
      String colorCode = _getColorCode(color);
      developer.log(
        '$colorCode$message\n',
        name: 'BenyLogger',
      );
    }
  }

  static void logError(String message) {
    if (kDebugMode) {
      String colorCode = _getColorCode(LogColor.RED);
      developer.log(
        '$colorCode$message\n',
        name: 'BenyLogger',
      );
    }
  }

  static void logSuccess(String message) {
    if (kDebugMode) {
      String colorCode = _getColorCode(LogColor.GREEN);
      developer.log(
        '$colorCode$message\n',
        name: 'BenyLogger',
      );
    }
  }

  static void logWarning(String message) {
    if (kDebugMode) {
      String colorCode = _getColorCode(LogColor.YELLOW);
      developer.log(
        '$colorCode$message\n',
        name: 'BenyLogger',
      );
    }
  }

  static void logInfo(String message) {
    if (kDebugMode) {
      String colorCode = _getColorCode(LogColor.BLUE);
      developer.log(
        '$colorCode$message\n',
        name: 'BenyLogger',
      );
    }
  }

  static String _getColorCode(LogColor color) {
    switch (color) {
      case LogColor.RED:
        return '\u001b[31m';
      case LogColor.GREEN:
        return '\u001b[32m';
      case LogColor.YELLOW:
        return '\u001b[33m';
      case LogColor.BLUE:
        return '\u001b[34m';
      case LogColor.MAGENTA:
        return '\u001b[35m';
      case LogColor.CYAN:
        return '\u001b[36m';
      case LogColor.WHITE:
        return '\u001b[37m';
      default:
        return '\u001b[0m'; //! DEFAULT
    }
  }
}
