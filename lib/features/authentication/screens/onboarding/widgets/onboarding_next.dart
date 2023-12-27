import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rork_wiki/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:rork_wiki/utils/consts/colors.dart';
import 'package:rork_wiki/utils/consts/sizes.dart';
import 'package:rork_wiki/utils/device/device_utility.dart';
import 'package:rork_wiki/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = RorkWikiHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: RorkWikiDeviceUtils.getBottomNavigationBarHeight(),
      right: RorkWikiSizes.defaultSpace,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: isDark ? RorkWikiColors.primary : Colors.black,
        ),
        onPressed: () => OnBoardingController.instance.nextPage(),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
