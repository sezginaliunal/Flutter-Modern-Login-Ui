import 'package:flutter/material.dart';
import 'package:modern_login_ui/constants/colors.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text('Forgot Password?',
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: AppColors.blackColor!.withOpacity(.5))),
    );
  }
}
