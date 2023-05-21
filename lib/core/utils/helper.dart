import 'package:flutter/services.dart';

class Helper {
  static void setSystemUIOverlayStyle({
    required Color systemNavigationBarColor,
    required Color statusBarColor,
    required Brightness statusBarBrightness,
  }) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: systemNavigationBarColor,
        statusBarColor: statusBarColor,
        statusBarBrightness: statusBarBrightness,
      ),
    );
  }
}
