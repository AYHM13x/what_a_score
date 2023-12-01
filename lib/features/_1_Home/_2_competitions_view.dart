import 'package:flutter/material.dart';

import 'bodies/_2_competitions_view_body.dart';

class CompetitionsView extends StatelessWidget {
  const CompetitionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: Drawer(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 16,
            bottom: 0,
            right: 8,
            left: 8,
          ),
          child: CompetitionsViewBody(),
        ),
      ),
    );
  }
}
