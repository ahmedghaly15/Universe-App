import 'package:flutter/material.dart';
import 'package:universe_app/core/global/app_assets.dart';
import 'package:universe_app/core/global/app_colors.dart';
import 'package:universe_app/core/global/app_constants.dart';
import 'package:universe_app/core/global/app_texts.dart';
import 'package:universe_app/features/auth/presentation/view/auth_view.dart';

import '../../../../core/global/app_navigator.dart';
import '../../../../core/global/app_styles.dart';
import '../../../../core/utils/helper.dart';
import '../../../../core/utils/size_config.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  late Animation<Offset> textSlideAnimation;
  late Animation<Offset> logoSlideAnimation;

  @override
  void initState() {
    super.initState();

    setSystemUIOverlayStyle(
      systemNavigationBarColor: AppColors.primaryColor,
      statusBarColor: AppColors.primaryColor,
      statusBarBrightness: Brightness.light,
    );

    initSlidingAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SlideTransition(
            position: logoSlideAnimation,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppConstants.kDefaultRadius),
              child: Image.asset(
                AppAssets.appIcon,
                width: 80,
                height: 80,
              ),
            ),
          ),
          const SizedBox(height: 20),
          SlideTransition(
            position: textSlideAnimation,
            child: Text(
              AppTexts.splashViewText,
              style: AppStyles.textStyle16.copyWith(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2800),
    );

    textSlideAnimation = Tween<Offset>(
      begin: const Offset(10, 0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.fastOutSlowIn,
      ),
    );

    logoSlideAnimation = Tween<Offset>(
      begin: const Offset(-10, 0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.fastOutSlowIn,
      ),
    );

    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(milliseconds: 3700),
      () => AppNavigator.navigateAndFinish(screen: const AuthView()),
    );
  }
}
