import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kedk_portfolio/navigation/app_routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late Timer _timer;

  @override
  void initState() {
    _timer = Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamedAndRemoveUntil(
        context,
        RouterHelper.home,
        (route) => false,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    if (_timer.isActive) {
      _timer.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Splash Page',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
