import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/styles.dart';

class ComoetitionItemView extends StatelessWidget {
  const ComoetitionItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: AppColors.greyColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: Image.network(
              "https://apiv3.apifootball.com/badges/logo_leagues/153_championship.png",
            ),
          ),
          Text(
            "League Name",
            style: Styles.textStyle16.copyWith(
              color: AppColors.whiteColor,
            ),
          )
        ],
      ),
    );
  }
}
