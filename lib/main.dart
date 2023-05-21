import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:universe_app/core/utils/app_texts.dart';
import 'package:universe_app/core/utils/app_theme.dart';
import 'package:universe_app/features/auth/presentation/views/auth_view.dart';

void main() => runApp(const UniverseApp());

class UniverseApp extends StatelessWidget {
  const UniverseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppTexts.appTitle,
      theme: AppTheme.appTheme(),
      home: const AuthView(),
    );
  }
}
