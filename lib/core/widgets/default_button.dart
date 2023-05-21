import 'package:flutter/material.dart';

import '../global/app_colors.dart';
import '../global/app_styles.dart';

class DefaultButton extends StatelessWidget {
  final String buttonText;
  final double height;
  final double width;
  final void Function()? onPressed;
  final TextStyle? textStyle;

  const DefaultButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.height = 15,
    this.width = 130,
    this.textStyle = AppStyles.texStyle24,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: width,
            vertical: height,
          ),
        ),
        backgroundColor: MaterialStateProperty.all(AppColors.primaryColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      child: Text(
        buttonText,
        style: textStyle,
      ),
    );
  }
}
