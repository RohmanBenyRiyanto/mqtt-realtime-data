import 'dart:async';

import 'package:flutter/material.dart';

import 'app/app.dart';
import 'config/app_initial.dart';

void main() => Main();

class Main extends AppInitial {
  @override
  FutureOr<StatelessWidget> onCreate() {
    ErrorWidget.builder = (details) {
      Zone.current.handleUncaughtError(details.exception, details.stack!);
      return const SizedBox.shrink();
    };
    return MyApp();
  }
}
