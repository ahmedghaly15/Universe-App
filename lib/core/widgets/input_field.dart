import 'package:flutter/material.dart';

import '../global/app_colors.dart';
import '../global/app_styles.dart';

class InputField extends StatelessWidget {
  final String hint;
  final TextStyle? hintStyle;
  final bool? obsecure;
  final Widget? icon;
  final Widget? prefixIcon;
  final TextEditingController controller;
  final TextCapitalization textCapitalization;
  final String? Function(String?)? validating;
  final TextInputType keyboardType;
  final void Function(String)? onSubmit;

  const InputField({
    Key? key,
    required this.hint,
    this.hintStyle = AppStyles.textStyle18,
    required this.controller,
    required this.textCapitalization,
    required this.validating,
    required this.keyboardType,
    this.obsecure,
    this.prefixIcon,
    this.icon,
    this.onSubmit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: key,
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: hintStyle,
        prefixIcon: prefixIcon,
        prefixIconColor: AppColors.primaryColor,
        suffixIcon: icon,
        suffixIconColor: AppColors.primaryColor,
        contentPadding: const EdgeInsets.all(10),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 0,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.primaryColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      cursorColor: AppColors.primaryColor,
      style: AppStyles.textStyle20,
      obscureText: obsecure!,
      keyboardType: keyboardType,
      textCapitalization: textCapitalization,
      validator: validating,
      onFieldSubmitted: onSubmit,
    );
  }
}
