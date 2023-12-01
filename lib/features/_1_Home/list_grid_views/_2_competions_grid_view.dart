import 'package:flutter/material.dart';

import '../../../core/utils/dimensions_of_screen.dart';
import '../widgets/_2_competitions_item_view.dart';

class CompetitionsGridView extends StatelessWidget {
  const CompetitionsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DimensionsOfScreen.dimensionsOfHeight(context, 83),
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 200,
          crossAxisSpacing: 10,
          mainAxisSpacing: 15,
          // childAspectRatio: 2 / 3,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              //GoRouter.of(context).push(AppRouter.nationalViewPath);
            },
            child: const ComoetitionItemView(),
          );
        },
      ),
    );
  }
}
