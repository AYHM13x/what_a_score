import 'package:bouncy_widget/bouncy_widget.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/AsstesApp.dart';

class AnimatedLogoView extends StatelessWidget {
  const AnimatedLogoView({
    super.key,
    required this.rotationAnimation,
  });

  final Animation<double> rotationAnimation;
  @override
  Widget build(BuildContext context) {
    return Bouncy(
      duration: const Duration(milliseconds: 1000),
      lift: 25,
      child: RotationTransition(
        turns: rotationAnimation,
        child: SizedBox(
          height: 100,
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(AssetsImage.animatedBall),
          ),
        ),
      ),
    );
  }
}
