import 'package:flutter/material.dart';
import 'package:rork_wiki/utils/consts/sizes.dart';
import 'package:rork_wiki/utils/helpers/helper_functions.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.imageProvider,
    required this.title,
    required this.subTitle,
  });

  final ImageProvider imageProvider;
  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(RorkWikiSizes.defaultSpace),
      child: Column(
        children: [
          Image(
              width: RorkWikiHelperFunctions.screenWidth(context) *
                  0.8, // 80% of screen width
              height: RorkWikiHelperFunctions.screenHeigth(context) *
                  0.6, // 60% of screen width
              image: imageProvider),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: RorkWikiSizes.spaceBetweenItems),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
