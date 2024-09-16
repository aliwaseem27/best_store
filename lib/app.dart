import 'package:device_preview/device_preview.dart';
import 'package:best_store/presentation/screens/core/app_router.dart';
import 'package:best_store/utils/themes/theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Best Store',
      theme: AppTheme.lightTheme,
      routerConfig: _appRouter.config(),
    );
  }
}
