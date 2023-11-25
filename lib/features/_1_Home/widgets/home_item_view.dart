import 'package:flutter/material.dart';
import 'package:what_a_score/core/utils/styles.dart';

import '../../../core/utils/AsstesApp.dart';
import '../../../core/utils/app_colors.dart';

class HomeItemView extends StatelessWidget {
  const HomeItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: AppColors.greyColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: Image.asset(
              AssetsImage.flags,
            ),
          ),
          Text(
            "National Teams",
            style: Styles.textStyle16.copyWith(
              color: AppColors.whiteColor,
            ),
          )
        ],
      ),
    );
  }
}
