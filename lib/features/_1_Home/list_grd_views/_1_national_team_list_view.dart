import 'package:flutter/material.dart';
import 'package:what_a_score/core/utils/dimensions_of_screen.dart';

import '../widgets/_1_national_team_item_view.dart';

class NationalTeamListView extends StatelessWidget {
  const NationalTeamListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DimensionsOfScreen.dimensionsOfHeight(context, 84),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return NationalTeamItem(
            id: index + 1,
          );
        },
      ),
    );
  }
}
