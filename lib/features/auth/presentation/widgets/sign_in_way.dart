import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInWay extends StatelessWidget {
  const SignInWay({
    super.key,
    required this.asset,
    required this.onTap,
  });

  final String asset;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(14.0),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.white,
        ),
        child: SvgPicture.asset(asset),
      ),
    );
  }
}
