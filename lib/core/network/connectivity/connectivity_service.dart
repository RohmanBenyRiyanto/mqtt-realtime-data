import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../../utils/common/common.dart';

class ConnectivityService {
  static ConnectivityService? _instance;
  ConnectivityService._();
  static ConnectivityService get instance {
    _instance ??= ConnectivityService._();
    return _instance!;
  }

  static final Connectivity _connectivity = Connectivity();
  static final InternetConnectionChecker _connectionChecker =
      InternetConnectionChecker();
  static bool hasConnection = true;
  static bool isShowSnackbar = false;

  static final _connectionStreamController = StreamController<bool>.broadcast();
  Stream<bool> get connectionStream => _connectionStreamController.stream;

  Future<void> initialize() async {
    ConnectivityResult connectivityResult;
    try {
      connectivityResult = await _connectivity.checkConnectivity();
    } catch (e) {
      Logger.logError("Error: $e");
      rethrow;
    }
    _updateConnectionStatus(connectivityResult);

    _connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
      _updateConnectionStatus(result);
    });
  }

  static Future<bool> _checkInternetConnection() async {
    try {
      final isConnected = await _connectionChecker.hasConnection;
      return isConnected;
    } catch (e) {
      if (kDebugMode) {
        Logger.log("Error: $e", color: LogColor.RED);
      }
      return false;
    }
  }

  static void _updateConnectionStatus(ConnectivityResult result) async {
    switch (result) {
      case ConnectivityResult.none:
        hasConnection = await _checkInternetConnection();
        if (isShowSnackbar == false && hasConnection == false) {
          isShowSnackbar = true;
          //! Add snackbar on error [optional]
          Logger.log("Network not available", color: LogColor.RED);
        }
        break;
      case ConnectivityResult.mobile:
      case ConnectivityResult.wifi:
      case ConnectivityResult.ethernet:
      case ConnectivityResult.vpn:
        hasConnection = true;
        if (isShowSnackbar == true && hasConnection == true) {
          //! Close when use snackbar [optional, required if you use snackbar]
          isShowSnackbar = false;
          Logger.log("Connected to internet", color: LogColor.GREEN);
        }
        break;
      default:
        hasConnection = await _checkInternetConnection();
        if (isShowSnackbar == false && hasConnection == false) {
          isShowSnackbar = true;
          //! Add snackbar on error [optional]
          Logger.log("Network not available", color: LogColor.RED);
        }
        break;
    }

    _connectionStreamController.add(hasConnection);
  }
}
