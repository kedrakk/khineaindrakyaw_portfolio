import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kedk_portfolio/const/theme.dart';

@immutable
class MyAppTheme {
  const MyAppTheme({
    required this.themeKey,
    required this.theme,
    required this.themeIcon,
  });

  final String themeKey;
  final ThemeData theme;
  final Widget themeIcon;

  MyAppTheme copyWith({String? themeKey, ThemeData? theme, Widget? themeIcon}) {
    return MyAppTheme(
      themeKey: themeKey ?? this.themeKey,
      theme: theme ?? this.theme,
      themeIcon: themeIcon ?? this.themeIcon,
    );
  }

  static List<MyAppTheme> myAppThemes = [
    MyAppTheme(
      themeKey: 'light',
      theme: AppThemeData.ligthTheme,
      themeIcon: const Icon(Icons.brightness_3),
    ),
    MyAppTheme(
      themeKey: 'dark',
      theme: AppThemeData.darkTheme,
      themeIcon: const Icon(Icons.wb_sunny),
    ),
  ];
}

class ChangeThemeNotifier extends StateNotifier<MyAppTheme> {
  ChangeThemeNotifier() : super(MyAppTheme.myAppThemes[0]);

  void changeTheme(String currentKey) {
    state = MyAppTheme.myAppThemes.where((e) => e.themeKey != currentKey).first;
  }
}

final themeProvider =
    StateNotifierProvider<ChangeThemeNotifier, MyAppTheme>((ref) {
  return ChangeThemeNotifier();
});
