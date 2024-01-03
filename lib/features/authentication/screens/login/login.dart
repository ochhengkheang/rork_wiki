import 'package:flutter/material.dart';
import 'package:rork_wiki/commons/styles/spacing_style.dart';
import 'package:rork_wiki/gen/assets.gen.dart';
import 'package:rork_wiki/utils/consts/texts.dart';
import 'package:rork_wiki/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = RorkWikiHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: RorkWikiSpacingStyle.paddingWithAppBarHeight,
            child: Column(
              children: [
                // Logo, Title, Subtitle
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    isDarkMode
                        ? Assets.logos.rorkWikiLogoLightTranparentProtrait
                            .image(height: 150)
                        : Assets.logos.rorkWikiLogoDarkTranparentPotrait
                            .image(height: 150),
                    const Text(RorkWikiTextString.appName),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
