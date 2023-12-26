import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rork_wiki/utils/themes/custom_theme/app_bar_theme.dart';
import 'package:rork_wiki/utils/themes/custom_theme/elevated_button_theme.dart';

class MyTheme {
  MyTheme._();

  static final ThemeData materialLightTheme = ThemeData(
      appBarTheme: RokWikiAppBarTheme.lightAppBarTheme,
      elevatedButtonTheme: RokWikiElevatedButtonTheme.lightElevatedButtonTheme);

  static final ThemeData materialDarkTheme = ThemeData(
      appBarTheme: RokWikiAppBarTheme.darkAppBarTheme,
      elevatedButtonTheme: RokWikiElevatedButtonTheme.darkElevatedButtonTheme);

  static final CupertinoThemeData cupertinoLightTheme =
      const CupertinoThemeData().copyWith(
    brightness: Brightness.light,
  );

  static final CupertinoThemeData cupertinoDarkTheme =
      const CupertinoThemeData().copyWith(
    brightness: Brightness.dark,
  );
}
