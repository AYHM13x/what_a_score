import 'package:flutter/material.dart';

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
          child: Center(
            child: Text(""),
          ),
        ),
      ),
    );
  }
}
