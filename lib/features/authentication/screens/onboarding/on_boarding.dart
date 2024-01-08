import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rork_wiki/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:rork_wiki/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:rork_wiki/features/authentication/screens/onboarding/widgets/onboarding_next.dart';
import 'package:rork_wiki/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:rork_wiki/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:rork_wiki/gen/assets.gen.dart';
import 'package:rork_wiki/utils/consts/texts.dart';

class OnBoardingScreen extends ConsumerWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Riverpod Controller
    final OnBoardingController onBoardingcontroller =
        ref.watch(onBoardingControllerProvider);

    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Page
          PageView(
            controller: onBoardingcontroller.pageController.state,
            onPageChanged: onBoardingcontroller.updatePageIndicator,
            children: [
              OnBoardingPage(
                title: RorkWikiTextString.onBoardingTitle1,
                subTitle: RorkWikiTextString.onBoardingSubtitleTitle1,
                imageProvider:
                    Assets.images.onboardingImages.sammyLineSailor.provider(),
              ),
              OnBoardingPage(
                title: RorkWikiTextString.onBoardingTitle2,
                subTitle: RorkWikiTextString.onBoardingSubtitleTitle2,
                imageProvider:
                    Assets.images.onboardingImages.sammyLineCoding.provider(),
              ),
              OnBoardingPage(
                title: RorkWikiTextString.onBoardingTitle3,
                subTitle: RorkWikiTextString.onBoardingSubtitleTitle3,
                imageProvider: Assets
                    .images.onboardingImages.sammyLineSocialMedia
                    .provider(),
              ),
            ],
          ),

          // Skip Button
          const OnBoardingSkip(),

          // Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          // Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
