import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/styles.dart';

class NationalTeamItem extends StatelessWidget {
  const NationalTeamItem({super.key, required this.id});
  final int id;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: AppColors.blackColor),
        ),
        child: Row(
          children: [
            Text(
              id < 10 ? "$id  -" : "$id -",
              style: Styles.textStyle16,
            ),
            const Gap(8),
            ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: Image.network(
                "https://apiv3.apifootball.com/badges/logo_country/107_syria.png",
                //height: 40,
              ),
            ),
            const Gap(8),
            const Text(
              "Syria",
              style: Styles.textStyle16,
            ),
          ],
        ),
      ),
    );
  }
}


//  ClipRRect(
//               borderRadius: BorderRadius.circular(22),
//               child: Image.network(
//                 "https://apiv3.apifootball.com/badges/logo_country/107_syria.png",
//                 //height: 40,
//               ),
//             ),