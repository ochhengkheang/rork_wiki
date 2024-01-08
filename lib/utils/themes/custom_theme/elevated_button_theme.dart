import 'package:flutter/material.dart';
import 'package:rork_wiki/utils/consts/colors.dart';

class RorkWikiElevatedButtonTheme {
  RorkWikiElevatedButtonTheme._();

  static final ElevatedButtonThemeData lightElevatedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      textStyle: const TextStyle(
        fontSize: 16, //fixed value
        fontWeight: FontWeight.w600,
      ),
      foregroundColor: RorkWikiColors.white,
      backgroundColor: RorkWikiColors.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );

  static final ElevatedButtonThemeData darkElevatedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      textStyle: const TextStyle(
        fontSize: 16, //fixed value
        fontWeight: FontWeight.w600,
      ),
      foregroundColor: RorkWikiColors.white,
      backgroundColor: RorkWikiColors.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
