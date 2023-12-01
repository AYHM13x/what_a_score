import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../appbars/home_view_appbar.dart';
import '../list_grid_views/_2_competions_grid_view.dart';

class CompetitionsViewBody extends StatelessWidget {
  const CompetitionsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomeViewAppBar(),
        Gap(24),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: CompetitionsGridView(),
        ),
      ],
    );
  }
}
