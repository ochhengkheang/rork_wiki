import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rork_wiki/utils/themes/custom_theme/app_bar_theme.dart';
import 'package:rork_wiki/utils/themes/custom_theme/bottom_sheet_theme.dart';
import 'package:rork_wiki/utils/themes/custom_theme/checkbox_theme.dart';
import 'package:rork_wiki/utils/themes/custom_theme/chip_theme.dart';
import 'package:rork_wiki/utils/themes/custom_theme/elevated_button_theme.dart';
import 'package:rork_wiki/utils/themes/custom_theme/outline_button_theme.dart';
import 'package:rork_wiki/utils/themes/custom_theme/text_form_field_theme.dart';
import 'package:rork_wiki/utils/themes/custom_theme/text_theme.dart';

class MyTheme {
  MyTheme._();

  static final ThemeData materialLightTheme = ThemeData(
    appBarTheme: RorkWikiAppBarTheme.lightAppBarTheme,
    elevatedButtonTheme: RorkWikiElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: RorkWikiOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: RorkWikiTextFormFieldTheme.lightInputDecorationTheme,
    textTheme: RorkWikiTextTheme.lightTextTheme,
    bottomSheetTheme: RorkWikiBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: RorkWikiCheckBoxTheme.lightCheckboxTheme,
    chipTheme: RorkWikiChipTheme.lightChipTheme,
    brightness: Brightness.light,
  );

  static final ThemeData materialDarkTheme = ThemeData(
    appBarTheme: RorkWikiAppBarTheme.darkAppBarTheme,
    elevatedButtonTheme: RorkWikiElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: RorkWikiOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: RorkWikiTextFormFieldTheme.darkInputDecorationTheme,
    textTheme: RorkWikiTextTheme.darkTextTheme,
    bottomSheetTheme: RorkWikiBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: RorkWikiCheckBoxTheme.darkCheckboxTheme,
    chipTheme: RorkWikiChipTheme.darkChipTheme,
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
