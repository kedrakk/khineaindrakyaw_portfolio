import 'package:flutter/material.dart';
import 'package:kedk_portfolio/pages/home_page.dart';
import 'package:kedk_portfolio/pages/splash_page.dart';
import 'package:kedk_portfolio/widgets/route_not_found.dart';

class RouterHelper {
  static const String home = '/home';
  static const String splash = '/splash';
  static const String defaultRoute = '/';
  static const String work = '/work';
  static const String skills = '/skills';
  static const String contact = '/contact';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(
          builder: (_) => const SplashPage(),
          settings: settings,
        );
      case defaultRoute:
        return MaterialPageRoute(
          builder: (_) => const SplashPage(),
          settings: settings,
        );
      case home:
        return MaterialPageRoute(
          builder: (_) => HomePage(),
          settings: settings,
        );
      case work:
        return MaterialPageRoute(
          builder: (_) => HomePage(
            currentIndex: 1,
          ),
          settings: settings,
        );
      case skills:
        return MaterialPageRoute(
          builder: (_) => HomePage(
            currentIndex: 2,
          ),
          settings: settings,
        );
      case contact:
        return MaterialPageRoute(
          builder: (_) => HomePage(
            currentIndex: 3,
          ),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const RouteNotFoundPage(),
          settings: settings,
        );
    }
  }
}
