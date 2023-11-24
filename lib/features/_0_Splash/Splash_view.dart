import 'package:flutter/material.dart';
import 'package:what_a_score/features/_0_Splash/bodies/splash_view_body.dart';

class SpashView extends StatelessWidget {
  const SpashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: SplashViewBody(),
        ),
      ),
    );
  }
}
