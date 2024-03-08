import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import '../config/build_config.dart';

mixin AppMixin {
  Widget Function(BuildContext, Widget?)? builder() {
    if (BuildConfig.isDebugLayout()) {
      return DevicePreview.appBuilder;
    } else {
      return null;
    }
  }

  Locale? locale(BuildContext context) {
    if (BuildConfig.isDebugLayout()) {
      return DevicePreview.locale(context);
    } else {
      return const Locale('id', 'ID');
    }
  }
}
