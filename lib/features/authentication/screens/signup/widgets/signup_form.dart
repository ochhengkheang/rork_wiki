import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rork_wiki/features/authentication/screens/signup/verify_email.dart';
import 'package:rork_wiki/features/authentication/screens/signup/widgets/terms_and_conditions_checkbox.dart';
import 'package:rork_wiki/utils/consts/sizes.dart';
import 'package:rork_wiki/utils/consts/texts.dart';
import 'package:rork_wiki/utils/helpers/helper_functions.dart';

class RokWikiSignUpForm extends StatelessWidget {
  const RokWikiSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);

    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Header
          Text(
            RorkWikiTextString.signUpTitle,
            style: _theme.textTheme.headlineMedium,
          ),
          const SizedBox(height: RorkWikiSizes.spaceBetweenSections),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// First Name
              Expanded(
                child: TextFormField(
                  // Don't Let TextForm take full width
                  expands: false,
                  decoration: const InputDecoration(
                    hintText: RorkWikiTextString.firstName,
                    label: Text(RorkWikiTextString.firstName),
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: RorkWikiSizes.spaceBetweenInputField),

              /// Last Name
              Expanded(
                child: TextFormField(
                  // Don't Let TextForms take full width
                  expands: false,
                  decoration: const InputDecoration(
                    hintText: RorkWikiTextString.lastName,
                    label: Text(RorkWikiTextString.lastName),
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: RorkWikiSizes.spaceBetweenItems),

          /// Username
          TextFormField(
            decoration: const InputDecoration(
              hintText: RorkWikiTextString.userName,
              label: Text(RorkWikiTextString.userName),
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: RorkWikiSizes.spaceBetweenItems),

          /// Email
          TextFormField(
            decoration: const InputDecoration(
              hintText: RorkWikiTextString.email,
              label: Text(RorkWikiTextString.email),
              prefixIcon: Icon(Iconsax.direct_inbox),
            ),
          ),
          const SizedBox(height: RorkWikiSizes.spaceBetweenItems),

          /// Phone Number
          TextFormField(
            decoration: const InputDecoration(
              hintText: RorkWikiTextString.phoneNumber,
              label: Text(RorkWikiTextString.phoneNumber),
              prefixIcon: Icon(Iconsax.airplane),
            ),
          ),
          const SizedBox(height: RorkWikiSizes.spaceBetweenItems),

          /// Password
          TextFormField(
            decoration: const InputDecoration(
              hintText: RorkWikiTextString.password,
              label: Text(RorkWikiTextString.password),
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: RorkWikiSizes.spaceBetweenItems),

          /// Term and Condition Checkbox
          const RorkWikiTermAndCondition(),
          const SizedBox(height: RorkWikiSizes.spaceBetweenSections),

          /// Create Account Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => RorkWikiHelperFunctions.navigateToScreen(
                    const VerifyEmailScreen(), context),
                child: const Text(RorkWikiTextString.createAcoount)),
          ),
          const SizedBox(height: RorkWikiSizes.spaceBetweenSections),
        ],
      ),
    );
  }
}
