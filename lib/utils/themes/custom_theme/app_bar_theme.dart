import 'package:flutter/material.dart';

class RorkWikiAppBarTheme {
  RorkWikiAppBarTheme._();

  static const AppBarTheme lightAppBarTheme = AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0,
    titleTextStyle: TextStyle(
      color: Colors.black,
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  );

  static const AppBarTheme darkAppBarTheme = AppBarTheme(
    // backgroundColor: Colors.black,
    elevation: 0,
    titleTextStyle: TextStyle(
      color: Colors.white,
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  );
}
