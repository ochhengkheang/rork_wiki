import 'package:flutter/material.dart';
import 'package:rork_wiki/gen/assets.gen.dart';
import 'package:rork_wiki/utils/consts/texts.dart';
import 'package:rork_wiki/utils/helpers/helper_functions.dart';

class RorkWikiLoginHeader extends StatelessWidget {
  const RorkWikiLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = RorkWikiHelperFunctions.isDarkMode(context);
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isDarkMode
            ? Assets.logos.rorkWikiLogoDarkTranparentPotrait.image(height: 150)
            : Assets.logos.rorkWikiLogoLightTranparentProtrait
                .image(height: 150),
        Text(
          RorkWikiTextString.loginTitle,
          style: theme.textTheme.headlineMedium,
        ),
        Text(
          RorkWikiTextString.loginSubtitle,
          style: theme.textTheme.bodyMedium,
        ),
      ],
    );
  }
}
