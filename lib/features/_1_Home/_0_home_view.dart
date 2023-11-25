import 'package:flutter/material.dart';

import 'bodies/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: const Scaffold(
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
      ),
    );
  }
}
