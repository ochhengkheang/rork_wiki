import 'package:flutter/material.dart';
import 'package:rork_wiki/utils/consts/sizes.dart';

class RorkWikiSpacingStyle {
  RorkWikiSpacingStyle._();

  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: RorkWikiSizes.appBarHeight,
    left: RorkWikiSizes.defaultSpace,
    right: RorkWikiSizes.defaultSpace,
    bottom: RorkWikiSizes.defaultSpace,
  );
}
