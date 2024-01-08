import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rork_wiki/commons/widgets/login_signup/form_divider.dart';
import 'package:rork_wiki/commons/widgets/login_signup/social_buttons.dart';
import 'package:rork_wiki/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:rork_wiki/utils/consts/sizes.dart';
import 'package:rork_wiki/utils/consts/texts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Iconsax.arrow_left_2),
            onPressed: () => Navigator.pop(context)),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(RorkWikiSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Sign Up Form
              RokWikiSignUpForm(),

              /// Divider
              RorkWikiFormDivider(dividerText: RorkWikiTextString.orSignUpWith),
              SizedBox(height: RorkWikiSizes.spaceBetweenSections),

              /// Footer
              RorkWikiSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
