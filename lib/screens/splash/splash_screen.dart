import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../application/splash/splash_bloc.dart';
import '../../config/app_theme.dart';
import '../../config/constants/assets_constants.dart';
import '../../config/navigation/app_navigation.dart';
import '../../injectable/injection.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController lottieController;
  bool isAnimationComplete = false;

  @override
  void initState() {
    super.initState();

    lottieController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    lottieController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          isAnimationComplete = true;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    lottieController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: AppTheme.primaryAppColor,
        child: !isAnimationComplete
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "dummy",
                        style: AppTheme.screenHeadingStyleOne,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 52,
                  ),
                  Lottie.asset(splashAnimation,
                      height: 200,
                      width: 200,
                      controller: lottieController, onLoaded: (composition) {
                    lottieController.forward();
                  }),
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Powered by",
                        style: AppTheme.screenHeadingStyleThree,
                      ),
                      SizedBox(
                        height: 70,
                        width: 70,
                        child: Icon(
                          Icons.warehouse,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : BlocProvider<SplashBloc>(
                create: (context) => getIt<SplashBloc>(),
                child: BlocListener<SplashBloc, SplashState>(
                  listener: (context, state) {
                    state.when(
                        loading: () {},
                        userExists: () => _jumpToHomeScreen(context),
                        userDoesntExist: () => _jumpToLoginScreen(context));
                  },
                  child: const SizedBox(),
                ),
              ),
      ),
    );
  }

  void _jumpToLoginScreen(BuildContext context) {
    jumpToLoginScreen(context);
  }

  void _jumpToHomeScreen(BuildContext context) {
    jumpToHomeScreen(context);
  }
}
