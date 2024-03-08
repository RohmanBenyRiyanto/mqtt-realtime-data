import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

import '../core/network/app_network.dart';
import '../core/network/network.dart';
import '../utils/common/common.dart';
import '../utils/injection/injection.dart';
import 'app_info.dart';
import 'build_config.dart';

abstract class AppInitial {
  AppInitial() {
    _init();
  }

  FutureOr<StatelessWidget> onCreate();

  Future<void> _init() async {
    await runZonedGuarded(
      () async {
        try {
          await _initializeApp();
          await configureInjection();
          await _configureSystemChrome();
          await _initializeLocalization();
          var app = await onCreate();
          await ConnectivityService.instance.initialize();

          return _runApp(app);
        } catch (e) {
          rethrow;
        }
      },
      (error, stack) {
        Logger.logError("========> App Initial Error <=========\n$error\n");
        Logger.logError("========> App Initial Stack <=========\n$stack\n");
      },
    );
  }

  Future<void> _initializeApp() async {
    WidgetsFlutterBinding.ensureInitialized();
    await AppInfo.instance.init();
    BuildConfig.init("development");
    await AppNetwork().initEnv();
  }

  Future<void> _initializeLocalization() async {
    Intl.defaultLocale = 'id_ID';
    await initializeDateFormatting();
  }

  Future<void> _configureSystemChrome() async {
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  void _runApp(StatelessWidget app) {
    if (BuildConfig.isDebugLayout()) {
      return runApp(
        DevicePreview(
          enabled: !kReleaseMode,
          builder: (_) => app,
        ),
      );
    } else {
      return runApp(app);
    }
  }
}
