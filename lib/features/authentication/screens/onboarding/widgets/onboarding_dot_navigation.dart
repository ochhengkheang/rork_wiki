import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rork_wiki/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:rork_wiki/utils/consts/colors.dart';
import 'package:rork_wiki/utils/consts/sizes.dart';
import 'package:rork_wiki/utils/device/device_utility.dart';
import 'package:rork_wiki/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends ConsumerWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Riverpod Controller
    // OnBoardingController onBoardingcontroller =
    //     ref.watch(OnBoardingController().onBoardingControllerProvider);
    final OnBoardingController onBoardingcontroller =
        ref.watch(onBoardingControllerProvider);

    // Check is dark mode or not to change dot color
    final isDark = RorkWikiHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: RorkWikiDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: RorkWikiSizes.defaultSpace,
      child: SmoothPageIndicator(
        onDotClicked: onBoardingcontroller.dotNavigationClick,
        controller: onBoardingcontroller.pageController.state,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: isDark ? RorkWikiColors.light : RorkWikiColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
