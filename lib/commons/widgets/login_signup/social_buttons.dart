import 'package:flutter/material.dart';
import 'package:rork_wiki/gen/assets.gen.dart';
import 'package:rork_wiki/utils/consts/colors.dart';
import 'package:rork_wiki/utils/consts/sizes.dart';

class RorkWikiSocialButtons extends StatelessWidget {
  const RorkWikiSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: RorkWikiColors.darkGrey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
              onPressed: () {},
              icon: Assets.icons.facebookWhite.image(
                width: RorkWikiSizes.iconMd,
                height: RorkWikiSizes.iconMd,
              )),
        ),
        const SizedBox(width: RorkWikiSizes.spaceBetweenItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: RorkWikiColors.darkGrey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
              onPressed: () {},
              icon: Assets.icons.google.image(
                width: RorkWikiSizes.iconMd,
                height: RorkWikiSizes.iconMd,
              )),
        ),
      ],
    );
  }
}
