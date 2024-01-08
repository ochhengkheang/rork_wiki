import 'package:flutter/material.dart';
import 'package:rork_wiki/utils/consts/colors.dart';
import 'package:rork_wiki/utils/consts/sizes.dart';
import 'package:rork_wiki/utils/consts/texts.dart';
import 'package:rork_wiki/utils/helpers/helper_functions.dart';

class RorkWikiTermAndCondition extends StatelessWidget {
  const RorkWikiTermAndCondition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    final bool _isDark = RorkWikiHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        /// Checkbox
        SizedBox(
          width: RorkWikiSizes.checkboxSize,
          height: RorkWikiSizes.checkboxSize,
          child: Checkbox(
            value: true,
            onChanged: (value) {},
          ),
        ),

        const SizedBox(width: RorkWikiSizes.spaceBetweenItems),

        Text.rich(
          TextSpan(
            children: [
              /// I agree to
              TextSpan(
                text: '${RorkWikiTextString.iAgreeto} ',
                style: _theme.textTheme.bodySmall,
              ),

              /// Privacy Policy
              TextSpan(
                text: RorkWikiTextString.privacyPolicy,
                style: _theme.textTheme.bodyMedium!.apply(
                  color: _isDark ? Colors.white : RorkWikiColors.primary,
                  decorationColor:
                      _isDark ? Colors.white : RorkWikiColors.primary,
                  decoration: TextDecoration.underline,
                ),
              ),

              /// and
              TextSpan(
                text: ' ${RorkWikiTextString.and} ',
                style: _theme.textTheme.bodySmall,
              ),

              /// Terms of Uses
              TextSpan(
                text: RorkWikiTextString.termsOfUse,
                style: _theme.textTheme.bodyMedium!.apply(
                  color: _isDark ? Colors.white : RorkWikiColors.primary,
                  decorationColor:
                      _isDark ? Colors.white : RorkWikiColors.primary,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
