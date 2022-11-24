import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../config/constants/assets_constants.dart';

class InitialSearchIndicator extends StatelessWidget {
  const InitialSearchIndicator({
    Key? key,
    required this.lottieController,
  }) : super(key: key);

  final AnimationController lottieController;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        homeScreenAnimation,
        height: 200,
        width: 200,
        controller: lottieController,
        onLoaded: (composition) {
          lottieController.forward();
        },
      ),
    );
  }
}
