import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:what_a_score/core/utils/styles.dart';

import '../../../core/utils/app_colors.dart';

class NationalTeamItem extends StatelessWidget {
  const NationalTeamItem({super.key, required this.id});
  final int id;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: AppColors.blackColor),
        ),
        child: Row(
          children: [
            Text(
              "$id - ",
              style: Styles.textStyle16,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: Image.network(
                  "https://apiv3.apifootball.com/badges/logo_country/107_syria.png"),
            ),
            const Gap(8),
            const Text(
              "Syria",
              style: Styles.textStyle20,
            )
          ],
        ),
      ),
    );
  }
}
