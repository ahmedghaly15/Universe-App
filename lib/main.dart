import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/features/splash/presentation/view/splash_view.dart';
import 'core/global/app_texts.dart';
import 'core/global/app_theme.dart';

void main() => runApp(const UniverseApp());

class UniverseApp extends StatelessWidget {
  const UniverseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppTexts.appTitle,
      theme: AppTheme.appTheme(),
      home: const SplashView(),
    );
  }
}
