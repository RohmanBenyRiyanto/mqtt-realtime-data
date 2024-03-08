import 'package:envied/envied.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'env.g.dart';

@Envied(path: ".dev.env", obfuscate: true)
abstract class DevEnv {
  @EnviedField(varName: 'BASE_SERVER', obfuscate: true)
  static String baseServer = _DevEnv.baseServer;
  @EnviedField(varName: 'BASE_CLIENTID', obfuscate: true)
  static String baseClientId = _DevEnv.baseClientId;
  @EnviedField(varName: 'BASE_PORT', obfuscate: true)
  static int basePort = _DevEnv.basePort;
}

enum EnvironmentType { development }

class AppEnvironment {
  AppEnvironment._();
  static AppEnvironment get instance => AppEnvironment._();

  Future<EnvironmentType> getCurrentEnv() async {
    final packageInfo = await PackageInfo.fromPlatform();
    switch (packageInfo.packageName) {
      case "com.example.mqtt_broker":
        return EnvironmentType.development;
      default:
        return EnvironmentType.development;
    }
  }

  Future<String> getBaseUrlBasedOnEnv() async {
    final currentEnv = await getCurrentEnv();

    if (currentEnv == EnvironmentType.development) {
      return Future.value(DevEnv.baseServer);
    } else {
      return Future.value(DevEnv.baseServer);
    }
  }

  Future<String> getClientIdBasedOnEnv() async {
    final currentEnv = await getCurrentEnv();

    if (currentEnv == EnvironmentType.development) {
      return Future.value(DevEnv.baseClientId);
    } else {
      return Future.value(DevEnv.baseClientId);
    }
  }

  Future<int> getPortBasedOnEnv() async {
    final currentEnv = await getCurrentEnv();

    if (currentEnv == EnvironmentType.development) {
      return Future.value(DevEnv.basePort);
    } else {
      return Future.value(DevEnv.basePort);
    }
  }
}
