import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rork_wiki/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:rork_wiki/utils/consts/sizes.dart';
import 'package:rork_wiki/utils/device/device_utility.dart';

class OnBoardingSkip extends ConsumerWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final OnBoardingController onBoardingcontroller =
        ref.watch(onBoardingControllerProvider);
    // Specific position for skip button
    return Positioned(
        top: RorkWikiDeviceUtils.getAppBarHeight(),
        right: RorkWikiSizes.defaultSpace,
        child: TextButton(
            onPressed: () => onBoardingcontroller.skipPage(),
            child: const Text('Skip')));
  }
}
