import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInWay extends StatelessWidget {
  const SignInWay({
    super.key,
    required this.asset,
  });

  final String asset;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14.0),
      height: 60,
      width: 60,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: SvgPicture.asset(asset),
    );
  }
}
