import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kedk_portfolio/pages/my_app.dart';
import 'package:kedk_portfolio/service/locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
