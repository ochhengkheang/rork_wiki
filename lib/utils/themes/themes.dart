import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rork_wiki/utils/themes/custom_theme/app_bar_theme.dart';
import 'package:rork_wiki/utils/themes/custom_theme/elevated_button_theme.dart';
import 'package:rork_wiki/utils/themes/custom_theme/text_theme.dart';

class MyTheme {
  MyTheme._();

  static final ThemeData materialLightTheme = ThemeData(
    appBarTheme: RorkWikiAppBarTheme.lightAppBarTheme,
    elevatedButtonTheme: RorkWikiElevatedButtonTheme.lightElevatedButtonTheme,
    textTheme: RorkWikiTextTheme.lightTextTheme,
    brightness: Brightness.light,
  );

  static final ThemeData materialDarkTheme = ThemeData(
    appBarTheme: RorkWikiAppBarTheme.darkAppBarTheme,
    elevatedButtonTheme: RorkWikiElevatedButtonTheme.darkElevatedButtonTheme,
    textTheme: RorkWikiTextTheme.darkTextTheme,
    brightness: Brightness.dark,
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
