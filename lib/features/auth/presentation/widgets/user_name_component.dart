import 'package:flutter/material.dart';

import '../../../../core/widgets/input_field.dart';

class UsernameComponent extends StatelessWidget {
  const UsernameComponent({
    super.key,
    required this.slideAnimation,
    required this.usernameController,
  });

  final Animation<Offset> slideAnimation;
  final TextEditingController usernameController;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      curve: Curves.easeIn,
      child: SlideTransition(
        position: slideAnimation,
        child: InputField(
          key: const ValueKey("username"),
          hint: "Username",
          controller: usernameController,
          obsecure: false,
          keyboardType: TextInputType.text,
          textCapitalization: TextCapitalization.words,
          validating: (val) {
            if (val!.isEmpty) {
              return "Username can't be blank";
            }
            return null;
          },
        ),
      ),
    );
  }
}
