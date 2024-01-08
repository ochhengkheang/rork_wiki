import 'package:flutter/material.dart';
import 'package:rork_wiki/utils/consts/colors.dart';

class RorkWikiOutlinedButtonTheme {
  RorkWikiOutlinedButtonTheme._();

  static OutlinedButtonThemeData lightOutlinedButtonTheme =
      OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              elevation: 0,
              foregroundColor: Colors.black,
              side: const BorderSide(color: RorkWikiColors.darkGrey),
              textStyle: const TextStyle(
                  fontSize: 16, //fixed value
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              )));

  static OutlinedButtonThemeData darkOutlinedButtonTheme =
      OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              elevation: 0,
              foregroundColor: Colors.white,
              side: const BorderSide(color: RorkWikiColors.lightGrey),
              textStyle: const TextStyle(
                  fontSize: 16, //fixed value
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              )));
}
