import 'package:flutter/material.dart';

void main() {
  runApp(const WhatAScore());
}

class WhatAScore extends StatelessWidget {
  const WhatAScore({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}
