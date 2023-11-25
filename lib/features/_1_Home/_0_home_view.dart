import 'package:flutter/material.dart';

import 'bodies/_0_home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
            child: HomeViewBody(),
          ),
        ),
      ),
    );
  }
}
