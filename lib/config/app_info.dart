import 'package:package_info_plus/package_info_plus.dart';

class AppInfo {
  AppInfo._();

  static AppInfo? _instance;
  static AppInfo get instance => _instance ??= AppInfo._();

  String? _appName;
  String? _version;

  Future<void> init() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    setAppName = packageInfo.appName;
    setAppVersion = packageInfo.version;
  }

  set setAppName(String value) => _appName = value;
  set setAppVersion(String value) => _version = value;

  String get appName => _appName ??= 'Unknown';
  String get version => _version ??= 'Unknown';
}
