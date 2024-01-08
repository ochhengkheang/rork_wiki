import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rork_wiki/utils/consts/sizes.dart';
import 'package:rork_wiki/utils/consts/texts.dart';

class RorkWikiLoginForm extends StatelessWidget {
  const RorkWikiLoginForm({
    super.key,
  });

  //final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      //key: _formKey,
      child: Padding(
        // Padding Space between Logo & Form & Buttons
        padding: const EdgeInsets.symmetric(
            vertical: RorkWikiSizes.spaceBetweenSections),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Email
            const TextField(
              decoration: InputDecoration(
                // hintText: RorkWikiTextString.loginEmailHint,
                label: Text(RorkWikiTextString.loginEmailHint),
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),

            const SizedBox(height: RorkWikiSizes.spaceBetweenInputField),

            /// Password
            const TextField(
              decoration: InputDecoration(
                // hintText: RorkWikiTextString.loginPasswordHint,
                label: Text(RorkWikiTextString.loginPasswordHint),
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),

            /// Remember Me & Forgot Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember Me
                Row(children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(RorkWikiTextString.loginRememberMe)
                ]),

                /// Forgot Password
                TextButton(
                    onPressed: () {},
                    child: const Text(RorkWikiTextString.loginForgotPassword)),
              ],
            ),

            const SizedBox(height: RorkWikiSizes.spaceBetweenSections),

            /// Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(RorkWikiTextString.loginButton),
              ),
            ),
            const SizedBox(height: RorkWikiSizes.spaceBetweenItems),

            /// Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text(RorkWikiTextString.loginCreateAcoount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
