import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rork_wiki/utils/themes/custom_theme/app_bar_theme.dart';

class MyTheme {
  MyTheme._();

  static final ThemeData materialLightTheme = ThemeData(
    appBarTheme: MyAppBarTheme.lightAppBarTheme,
  );

  static final ThemeData materialDarkTheme = ThemeData(
    appBarTheme: MyAppBarTheme.darkAppBarTheme,
  );

  static final CupertinoThemeData cupertinoLightTheme =
      const CupertinoThemeData().copyWith(
    brightness: Brightness.light,
  );

  static final CupertinoThemeData cupertinoDarkTheme =
      const CupertinoThemeData().copyWith(
    brightness: Brightness.dark,
  );
}
