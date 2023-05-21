import 'package:flutter/material.dart';
import 'package:universe_app/core/global/app_colors.dart';
import 'package:universe_app/core/utils/helper.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  void initState() {
    super.initState();

    Helper.setSystemUIOverlayStyle(
      systemNavigationBarColor: AppColors.scaffoldBackgroundColor,
      statusBarColor: AppColors.scaffoldBackgroundColor,
      statusBarBrightness: Brightness.dark,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
