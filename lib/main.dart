import 'package:flutter/material.dart';

import 'constants.dart';
import 'core/utils/AsstesApp.dart';
import 'core/utils/app_routrer.dart';

void main() {
  runApp(const WhatAScore());
}

class WhatAScore extends StatelessWidget {
  const WhatAScore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      title: kAppName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: FontFamilies.comicSansMS,
      ),
    );
  }
}
