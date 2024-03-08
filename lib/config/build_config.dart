import '../utils/common/common.dart';

enum DebugMode { debugOnly, debugLayout }

enum Flavor { development }

extension FlavorExtension on Flavor {
  String get name => toString().split('.').last;
}

class BuildConfig {
  BuildConfig._(this.debugMode, this.flavor);

  final DebugMode debugMode;
  final Flavor? flavor;

  static late BuildConfig _instance;

  static void init(String? flavor) {
    Logger.logInfo(
        "╔══════════════════════════════════════════════════════════════╗");
    Logger.logInfo(
        "                    Build Flavor: $flavor                       ");
    Logger.logInfo(
        "╚══════════════════════════════════════════════════════════════╝");

    const strDebugMode = String.fromEnvironment("DEBUG_MODE");
    const debugMode = (strDebugMode == "DEBUG_LAYOUT")
        ? DebugMode.debugLayout
        : DebugMode.debugOnly;

    switch (flavor) {
      case "development":
        _instance = BuildConfig._(debugMode, Flavor.development);
        break;
      default:
    }
  }

  static bool isDebugLayout() => _instance.debugMode == DebugMode.debugLayout;
}
