import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kedk_portfolio/navigation/app_routes.dart';
import 'package:kedk_portfolio/pages/splash_page.dart';

import '../providers/app_theme_provider.dart';

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appThemeProvider = ref.watch(themeProvider);
    return MaterialApp(
      title: "Khin Eaindra Kyaw's Portfolio",
      theme: appThemeProvider.theme,
      home: const SplashPage(),
      debugShowCheckedModeBanner: false,
      initialRoute: RouterHelper.splash,
      onGenerateRoute: RouterHelper.generateRoute,
    );
  }
}
