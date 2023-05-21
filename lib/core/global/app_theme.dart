import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData appTheme() => ThemeData.light().copyWith(
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
        textTheme: GoogleFonts.latoTextTheme(ThemeData.light().textTheme),
        primaryColor: AppColors.primaryColor,
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            systemNavigationBarColor: AppColors.scaffoldBackgroundColor,
            statusBarColor: AppColors.scaffoldBackgroundColor,
            statusBarBrightness: Brightness.dark,
          ),
        ),
      );
}
