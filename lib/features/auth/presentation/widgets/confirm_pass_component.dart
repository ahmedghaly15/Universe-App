import 'package:flutter/material.dart';

import '../../../../core/widgets/input_field.dart';
import '../view/manager/auth_view_cubit.dart';

class ConfirmPassComponent extends StatelessWidget {
  const ConfirmPassComponent({
    super.key,
    required this.confirmPassController,
    required this.authMode,
    required this.cubit,
    required this.slideAnimation,
    required this.passwordController,
    required this.formKey,
    required this.signUpFormValidation,
    required this.confirmPassFocusNode,
  });

  final GlobalKey<FormState> formKey;
  final void Function(BuildContext context) signUpFormValidation;
  final TextEditingController passwordController;
  final TextEditingController confirmPassController;
  final AuthMode authMode;
  final AuthViewCubit cubit;
  final Animation<Offset> slideAnimation;
  final FocusNode confirmPassFocusNode;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      curve: Curves.easeIn,
      child: SlideTransition(
        position: slideAnimation,
        child: InputField(
          focusNode: confirmPassFocusNode,
          key: const ValueKey("confirm_password"),
          hint: "Confirm Password",
          controller: confirmPassController,
          obsecure: cubit.confirmPassVisiblity,
          keyboardType: TextInputType.visiblePassword,
          textCapitalization: TextCapitalization.none,
          icon: IconButton(
            onPressed: () {
              cubit.switchConfirmPassVisibility();
            },
            icon: Icon(
              cubit.confirmPassVisiblity
                  ? Icons.visibility_rounded
                  : Icons.visibility_off_rounded,
            ),
          ),
          validating: (val) {
            if (val! != passwordController.text || val.isEmpty) {
              return "Password doesn't match";
            }
            return null;
          },
          onSubmit: (String value) {
            if (formKey.currentState!.validate()) {
              signUpFormValidation(context);
            }
          },
        ),
      ),
    );
  }
}
