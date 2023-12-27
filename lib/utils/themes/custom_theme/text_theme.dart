import 'package:flutter/material.dart';
import 'package:rork_wiki/gen/assets.gen.dart';

class RorkWikiTextTheme {
  RorkWikiTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    //.copyWith() to only change change the default properties value we want, other default properties value will be kept
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32, //fixed value
        fontWeight: FontWeight.bold,
        color: Colors.black),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24, //fixed value
        fontWeight: FontWeight.w600,
        color: Colors.black),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18, //fixed value
        fontWeight: FontWeight.w600,
        color: Colors.black),

    titleLarge: const TextStyle().copyWith(
        fontSize: 16, //fixed value
        fontWeight: FontWeight.w600,
        color: Colors.black),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16, //fixed value
        fontWeight: FontWeight.w500,
        color: Colors.black),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16, //fixed value
        fontWeight: FontWeight.w400,
        color: Colors.black),

    bodyLarge: const TextStyle().copyWith(
        fontSize: 14, //fixed value
        fontWeight: FontWeight.w500,
        color: Colors.black),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14, //fixed value
        fontWeight: FontWeight.normal,
        color: Colors.black),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14, //fixed value
        fontWeight: FontWeight.w500,
        color: Colors.black.withOpacity(0.5)),

    labelLarge: const TextStyle().copyWith(
        fontSize: 12, //fixed value
        fontWeight: FontWeight.normal,
        color: Colors.black),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12, //fixed value
        fontWeight: FontWeight.normal,
        color: Colors.black.withOpacity(0.5)),
  );

  static TextTheme darkTextTheme = TextTheme(
    //.copyWith() to only change change the default properties value we want, other default properties value will be kept
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32, //fixed value
        fontWeight: FontWeight.bold,
        color: Colors.white),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24, //fixed value
        fontWeight: FontWeight.w900,
        color: Colors.white),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18, //fixed value
        fontWeight: FontWeight.w600,
        color: Colors.white),

    titleLarge: const TextStyle().copyWith(
        fontSize: 16, //fixed value
        fontWeight: FontWeight.w600,
        color: Colors.white),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16, //fixed value
        fontWeight: FontWeight.w500,
        color: Colors.white),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16, //fixed value
        fontWeight: FontWeight.w400,
        color: Colors.white),

    bodyLarge: const TextStyle().copyWith(
        fontSize: 14, //fixed value
        fontWeight: FontWeight.w500,
        color: Colors.white),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14, //fixed value
        fontWeight: FontWeight.normal,
        color: Colors.white),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14, //fixed value
        fontWeight: FontWeight.w500,
        color: Colors.white.withOpacity(0.5)),

    labelLarge: const TextStyle().copyWith(
        fontSize: 12, //fixed value
        fontWeight: FontWeight.normal,
        color: Colors.white),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12, //fixed value
        fontWeight: FontWeight.normal,
        color: Colors.white.withOpacity(0.5)),
  );
}
