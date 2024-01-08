import 'package:flutter/material.dart';
import 'package:rork_wiki/utils/consts/colors.dart';
import 'package:rork_wiki/utils/helpers/helper_functions.dart';

class RorkWikiFormDivider extends StatelessWidget {
  const RorkWikiFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = RorkWikiHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: isDarkMode ? RorkWikiColors.grey : RorkWikiColors.darkGrey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(dividerText, style: Theme.of(context).textTheme.labelMedium),
        Flexible(
          child: Divider(
            color: isDarkMode ? RorkWikiColors.grey : RorkWikiColors.darkGrey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
