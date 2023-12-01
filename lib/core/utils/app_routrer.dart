import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:what_a_score/features/_1_Home/_1_national_team_view.dart';

import '../../features/_0_Splash/splash_view.dart';
import '../../features/_1_Home/_0_home_view.dart';
import '../../features/_1_Home/_2_competitions_view.dart';

abstract class AppRouter {
  //Paths
  static String splashViewPath = "/";
  static String homeViewPath = "/homeView";
  static String nationalViewPath = "/homeView/nationalView";
  static String competitionsViewPath =
      "/homeView/nationalView/competitionsView";

  static final RouterConfig<Object> router = GoRouter(
    routes: [
      GoRoute(
        path: splashViewPath,
        builder: (context, state) => const SpashView(),
      ),
      GoRoute(
        path: homeViewPath,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: nationalViewPath,
        builder: (context, state) => const NationalTeamView(),
      ),
      GoRoute(
        path: competitionsViewPath,
        builder: (context, state) => const CompetitionsView(),
      ),
    ],
  );
}

// ItemsView
