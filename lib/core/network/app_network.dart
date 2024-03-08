
import '../../config/env.dart';

class AppNetwork {
  late String _baseServer;
  late String _baseClientId;
  late int _basePort;

  static AppNetwork? _instance;

  factory AppNetwork() {
    _instance ??= AppNetwork._internal();
    return _instance!;
  }

  AppNetwork._internal() {
    _baseServer = "";
    _baseClientId = "";
    _basePort = 0;
  }
  Future<void> initEnv() async {
    setBaseServer = await AppEnvironment.instance.getBaseUrlBasedOnEnv();
    setBaseClientId = await AppEnvironment.instance.getClientIdBasedOnEnv();
    setBasePort = await AppEnvironment.instance.getPortBasedOnEnv();
  }

  String get baseServer => _baseServer;
  String get baseClientId => _baseClientId;
  int get basePort => _basePort;

  set setBaseServer(String newValue) {
    _baseServer = newValue;
  }

  set setBaseClientId(String newValue) {
    _baseClientId = newValue;
  }

  set setBasePort(int newValue) {
    _basePort = newValue;
  }

  static const keepAlivePeriod = 60;
}
