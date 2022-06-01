import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kedk_portfolio/pages/home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      ),
    );

    return Center(
      child: Text(
        'Splash Page',
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
