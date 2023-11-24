import 'package:flutter/material.dart';
import 'package:what_a_score/core/utils/app_colors.dart';

import '../../../core/utils/AsstesApp.dart';
import '../../../core/utils/dimensions_of_screen.dart';

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
          mainAxisExtent: 150,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          // childAspectRatio: 2 / 3,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const HomeItemView();
        },
      ),
    );
  }
}

class HomeItemView extends StatelessWidget {
  const HomeItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: AppColors.orangeColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: Image.asset(
              AssetsImage.flags,
            ),
          ),
        ],
      ),
    );
  }
}
