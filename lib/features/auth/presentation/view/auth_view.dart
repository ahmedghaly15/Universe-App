import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:universe_app/core/utils/helper.dart';

import '../../../../core/utils/service_locator.dart';
import '../../domain/auth_repo.dart';
import '../widgets/auth_view_body.dart';
import 'manager/auth_view_cubit.dart';

class AuthView extends StatefulWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> with TickerProviderStateMixin {
  final GlobalKey<FormState> formKey = GlobalKey();
  AuthMode authMode = AuthMode.signIn;

  //============ TextFormFields Controllers ============
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPassController = TextEditingController();

  // Animations
  late AnimationController _slidecontroller;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    initSlidingAnimation();

    setSystemUIOverlayStyle();

    super.initState();
  }

  @override
  void dispose() {
    // Destroying The Controllers
    disposeControllers();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          AuthViewCubit(servicesLocator.get<AuthRepo>()),
      child: GestureDetector(
        // For Closing The Keyboard When The View Is Tapped
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: AuthViewBody(
            slideAnimation: _slideAnimation,
            authMode: authMode,
            switchAuthMode: switchAuthMode,
            formKey: formKey,
            emailController: emailController,
            usernameController: usernameController,
            passwordController: passwordController,
            confirmPassController: confirmPassController,
          ),
        ),
      ),
    );
  }

  void initSlidingAnimation() {
    _slidecontroller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, -0.15),
      end: const Offset(0, 0),
    ).animate(
      CurvedAnimation(parent: _slidecontroller, curve: Curves.fastOutSlowIn),
    );
  }

  //=========== For Switching Between Auth Modes ===========
  void switchAuthMode() {
    if (authMode == AuthMode.signIn) {
      setState(() {
        authMode = AuthMode.signUp;
      });

      _slidecontroller.forward();
    } else {
      setState(() {
        authMode = AuthMode.signIn;
      });
      _slidecontroller.reverse();
    }
  }

  void disposeControllers() {
    _slidecontroller.dispose();
    emailController.dispose();
    passwordController.dispose();
    usernameController.dispose();
    confirmPassController.dispose();
  }
}
