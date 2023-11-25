import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:what_a_score/core/utils/styles.dart';

import '../../../core/utils/AsstesApp.dart';
import '../../../core/utils/app_routrer.dart';
import '../animation_widgets/animated_logo_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController rotationAnimationController;
  late Animation<double> rotationAnimatedBallAnimation;

  @override
  void initState() {
    super.initState();

    initSildingText();

    navigateToHomeView();
  }

  @override
  void dispose() {
    //rotationAnimationController.stop();
    rotationAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedLogoView(
          rotationAnimation: rotationAnimatedBallAnimation,
        ),
        Text(
          "What A Score",
          style: Styles.textStyle30.copyWith(
            fontFamily: FontFamilies.dancingScript,
          ),
        ),
      ],
    );
  }

  void initSildingText() {
    rotationAnimationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    rotationAnimatedBallAnimation =
        Tween(begin: 0.0, end: 1.0).animate(rotationAnimationController);

    rotationAnimationController.repeat();
  }

  void navigateToHomeView() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      GoRouter.of(context).push(AppRouter.homeViewPath);
    });
  }
}
