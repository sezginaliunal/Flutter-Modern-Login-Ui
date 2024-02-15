import 'package:flutter/material.dart';
import 'package:modern_login_ui/constants/colors.dart';
import 'package:modern_login_ui/constants/paddings.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.blackColor,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)))),
        onPressed: () {},
        child: Padding(
          padding: CustomPaddings.medium,
          child: Text('Sign in',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: AppColors.whiteColor)),
        ));
  }
}
