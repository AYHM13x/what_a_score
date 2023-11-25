import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../appbars/home_view_appbar.dart';
import '../list_grd_views/_1_national_team_list_view.dart';

class NationalTeamViewBody extends StatelessWidget {
  const NationalTeamViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomeViewAppBar(),
        Gap(24),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: NationalTeamListView(),
        ),
      ],
    );
  }
}
