import 'package:flutter/material.dart';

class AppThemeData {
  static const Color black = Color(0xff000000);
  static const Color white = Color(0xffffffff);

  static const Color primary = Color(0xff00bcd4);
  static const Color primaryDark = Color(0xff0097a7);
  static const Color primaryLight = Color(0xffb3e5fc);

  static ThemeData ligthTheme = ThemeData(
    primaryColor: primary,
    primaryColorDark: primaryDark,
    primaryColorLight: primaryLight,
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    primaryTextTheme: const TextTheme(
      bodyText1: TextStyle(color: Colors.black),
    ),
    textTheme: const TextTheme(
      headline6: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: primary,
    primaryColorDark: primaryDark,
    primaryColorLight: primaryLight,
    backgroundColor: Colors.black,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      color: Colors.black,
      elevation: 0,
    ),
    primaryTextTheme: const TextTheme(
      bodyText1: TextStyle(color: Colors.white),
    ),
    textTheme: const TextTheme(
      headline6: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
