import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../appbars/home_view_appbar.dart';
import '../widgets/home_grid_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomeViewAppBar(),
        Gap(24),
        HomeGridView(),
      ],
    );
  }
}
