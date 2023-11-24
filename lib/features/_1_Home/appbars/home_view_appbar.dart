import 'package:flutter/material.dart';
import 'package:what_a_score/constants.dart';
import 'package:what_a_score/core/utils/AsstesApp.dart';
import 'package:what_a_score/core/utils/styles.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(Icons.list),
        ),
        const Spacer(),
        Text(
          kAppName,
          style: Styles.textStyle30.copyWith(
            fontFamily: FontFamilies.dancingScript,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.sunny),
          iconSize: 34,
        ),
      ],
    );
  }
}
