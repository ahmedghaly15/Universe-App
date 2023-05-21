import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData appTheme() => ThemeData.light().copyWith(
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
        primaryColor: AppColors.primaryColor,
      );
}
