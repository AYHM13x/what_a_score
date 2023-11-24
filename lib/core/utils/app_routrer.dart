import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/_0_Splash/splash_view.dart';
import '../../features/_1_Home/home_view.dart';

abstract class AppRouter {
  //Paths
  static String splashViewPath = "/";
  static String homeViewPath = "/homeView";

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
    ],
  );
}

// ItemsView
