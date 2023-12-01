import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:what_a_score/core/utils/dimensions_of_screen.dart';

import '../../../core/utils/app_routrer.dart';
import '../widgets/_1_national_team_item_view.dart';

class NationalTeamListView extends StatelessWidget {
  const NationalTeamListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DimensionsOfScreen.dimensionsOfHeight(context, 84),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.competitionsViewPath);
            },
            child: NationalTeamItem(
              id: index + 1,
            ),
          );
        },
      ),
    );
  }
}
