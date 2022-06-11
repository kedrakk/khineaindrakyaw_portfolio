import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kedk_portfolio/const/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      themeIcon: const Icon(Icons.wb_sunny),
    ),
    MyAppTheme(
      themeKey: 'dark',
      theme: AppThemeData.darkTheme,
      themeIcon: const Icon(Icons.brightness_3),
    ),
  ];
}

class ChangeThemeNotifier extends StateNotifier<MyAppTheme> {
  ChangeThemeNotifier() : super(MyAppTheme.myAppThemes[0]) {
    getThemeKey().then(
      (value) => state = MyAppTheme.myAppThemes
          .firstWhere((element) => element.themeKey == value),
    );
  }

  void changeTheme(String currentKey) {
    var newTheme =
        MyAppTheme.myAppThemes.where((e) => e.themeKey != currentKey).first;
    storeTheme(newTheme.themeKey);
    state = newTheme;
  }

  //store key in sharedpreferences
  void storeTheme(String themeKey) {
    SharedPreferences.getInstance().then((prefs) {
      prefs.setString('themeKey', themeKey);
    });
  }

  //get theme key from sharedpreferences
  Future<String> getThemeKey() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('themeKey') ?? 'light';
  }
}

final themeProvider =
    StateNotifierProvider<ChangeThemeNotifier, MyAppTheme>((ref) {
  return ChangeThemeNotifier();
});
