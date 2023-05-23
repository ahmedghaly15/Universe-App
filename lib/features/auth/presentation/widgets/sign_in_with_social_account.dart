import 'package:flutter/material.dart';

import '../../../../core/global/app_assets.dart';
import '../../../../core/global/app_styles.dart';
import '../../../../core/utils/size_config.dart';
import 'sign_in_way.dart';

class SignInWithSocialAccount extends StatelessWidget {
  const SignInWithSocialAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Text(
            "Or sign in with social account",
            style: AppStyles.textStyle16.copyWith(fontWeight: FontWeight.w500),
          ),
          SizedBox(height: SizeConfig.screenHeight! * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SignInWay(asset: AppAssets.googleLogo),
              SizedBox(width: SizeConfig.screenWidth! * 0.05),
              const SignInWay(asset: AppAssets.facebookLogo),
            ],
          ),
        ],
      ),
    );
  }
}
