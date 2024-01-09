import 'package:flutter/material.dart';
import 'package:rork_wiki/utils/consts/sizes.dart';
import 'package:rork_wiki/utils/consts/texts.dart';
import 'package:rork_wiki/utils/device/device_utility.dart';

class SuccessfulScreen extends StatelessWidget {
  const SuccessfulScreen({
    super.key,
    required this.title,
    required this.subTitle,
    required this.imageProvider,
    this.onPressed,
  });

  final String title, subTitle;
  final VoidCallback? onPressed;
  final ImageProvider imageProvider;

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(RorkWikiSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// Image
            Image(
              image: imageProvider,
              width: RorkWikiDeviceUtils.getScreenWidth(context) * 0.8,
              height: RorkWikiDeviceUtils.getScreenHeight(context) * 0.6,
            ),

            /// Title
            Text(
              title,
              style: _theme.textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: RorkWikiSizes.spaceBetweenItems),

            /// Subtitle
            Text(
              subTitle,
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
                onPressed: onPressed,
                child: const Text(RorkWikiTextString.continues),
              ),
            ),
            const SizedBox(
              height: RorkWikiSizes.spaceBetweenItems,
            ),
          ],
        ),
      ),
    );
  }
}
