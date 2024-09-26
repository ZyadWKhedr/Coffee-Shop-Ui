import 'package:flutter/material.dart';
import 'package:mec2/core/themes/ldark_theme.dart';
import 'package:mec2/core/themes/light_theme.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: kLightPrimaryColor,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: kLightTextColor),
      bodyMedium: TextStyle(color: kLightTextColor),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: kDarkPrimaryColor,
    scaffoldBackgroundColor: kDarkPrimaryColor,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: kDarkTextColor),
      bodyMedium: TextStyle(color: kDarkTextColor),
    ),
  );
}
