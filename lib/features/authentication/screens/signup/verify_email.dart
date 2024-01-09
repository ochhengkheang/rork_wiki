import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rork_wiki/commons/widgets/success_screen/success_screen.dart';
import 'package:rork_wiki/features/authentication/screens/login/login.dart';
import 'package:rork_wiki/gen/assets.gen.dart';
import 'package:rork_wiki/utils/consts/sizes.dart';
import 'package:rork_wiki/utils/consts/texts.dart';
import 'package:rork_wiki/utils/device/device_utility.dart';
import 'package:rork_wiki/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        // No leading button
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.clear),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(RorkWikiSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// Image
            Assets.gifs.emailMarketingAndNewsletter.image(
              width: RorkWikiDeviceUtils.getScreenWidth(context) * 0.6,
            ),

            /// Title
            Text(
              RorkWikiTextString.emailVerifyTitle,
              style: _theme.textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: RorkWikiSizes.spaceBetweenItems),

            /// Email address
            // Todo: Make the email address passed from the previous screen
            Text(
              'ochhengkheang@gmail.com',
              style: _theme.textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: RorkWikiSizes.spaceBetweenItems,
            ),

            /// Subtitle
            Text(
              RorkWikiTextString.emailVerifySubtitle,
              style: _theme.textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: RorkWikiSizes.spaceBetweenSections,
            ),

            /// Continue button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => RorkWikiHelperFunctions.navigateToScreen(
                    SuccessfulScreen(
                      title: RorkWikiTextString.successTitle,
                      subTitle: RorkWikiTextString.successSubtitle,
                      imageProvider: Assets.gifs.sammyLineRemoteWork.provider(),
                      onPressed: () => RorkWikiHelperFunctions.navigateToScreen(
                          const LoginScreen(), context),
                    ),
                    context),
                child: const Text(RorkWikiTextString.continues),
              ),
            ),
            const SizedBox(
              height: RorkWikiSizes.spaceBetweenItems,
            ),

            /// Resend email button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text(RorkWikiTextString.resentEmail),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
