import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';

void main() {
  runApp(
    DevicePreview(
      // enabled: !kReleaseMode,
      enabled: false,
      builder: (context) => ProviderScope(
        child: MyApp(),
      ),
    ),
  );
}
