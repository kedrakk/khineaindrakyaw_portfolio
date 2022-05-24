import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kedk_portfolio/home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const MyHomePage(
            title: "Khin Eaindra Kyaw's Portfolio",
          ),
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
