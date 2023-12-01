import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:what_a_score/core/utils/app_routrer.dart';

import '../../../core/utils/dimensions_of_screen.dart';
import '../widgets/_0_home_item_view.dart';

class HomeGridView extends StatelessWidget {
  const HomeGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DimensionsOfScreen.dimensionsOfHeight(context, 83),
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 140,
          crossAxisSpacing: 10,
          mainAxisSpacing: 15,
          // childAspectRatio: 2 / 3,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.nationalViewPath);
            },
            child: const HomeItemView(),
          );
        },
      ),
    );
  }
}
