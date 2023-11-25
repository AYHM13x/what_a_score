import 'package:flutter/material.dart';
import 'package:what_a_score/features/_1_Home/bodies/_1_national_team_view_body.dart';

class NationalTeamView extends StatelessWidget {
  const NationalTeamView({super.key});

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
          child: NationalTeamViewBody(),
        ),
      ),
    );
  }
}
