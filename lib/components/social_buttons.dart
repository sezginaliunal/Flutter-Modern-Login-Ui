import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FlutterSocialButton(
          mini: true,
          onTap: () {},
          buttonType: ButtonType.facebook,
        ),
        FlutterSocialButton(
          mini: true,
          onTap: () {},
          buttonType: ButtonType.google,
        ),
        FlutterSocialButton(
          mini: true,
          onTap: () {},
          buttonType: ButtonType.twitter,
        ),
        FlutterSocialButton(
          mini: true,
          onTap: () {},
          buttonType: ButtonType.github,
        ),
      ],
    );
  }
}
