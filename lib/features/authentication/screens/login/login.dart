import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:rork_wiki/commons/styles/spacing_style.dart';
import 'package:rork_wiki/commons/widgets/login_signup/form_divider.dart';
import 'package:rork_wiki/commons/widgets/login_signup/social_buttons.dart';
import 'package:rork_wiki/features/authentication/screens/login/widgets/login_form.dart';
import 'package:rork_wiki/features/authentication/screens/login/widgets/login_header.dart';
import 'package:rork_wiki/utils/consts/sizes.dart';
import 'package:rork_wiki/utils/consts/texts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: RorkWikiSpacingStyle.paddingWithAppBarHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Logo, Title, Subtitle
                const RorkWikiLoginHeader(),

                /// Form
                const RorkWikiLoginForm(),

                /// Divider
                RorkWikiFormDivider(
                    dividerText: RorkWikiTextString.orSignInWith.capitalize!),
                const SizedBox(height: RorkWikiSizes.spaceBetweenSections),

                /// Footer
                const RorkWikiSocialButtons()
              ],
            )),
      ),
    );
  }
}
