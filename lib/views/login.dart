import 'package:flutter/material.dart';
import 'package:modern_login_ui/components/sign_in_button.dart';
import 'package:modern_login_ui/components/social_buttons.dart';
import 'package:modern_login_ui/constants/colors.dart';
import 'package:modern_login_ui/constants/paddings.dart';
import 'package:modern_login_ui/widgets/forget_password.dart';
import 'package:modern_login_ui/widgets/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: CustomPaddings.medium,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.lock,
                  size: 80,
                ),
                Text('Welcome back you have been missed',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: AppColors.blackColor!.withOpacity(.5))),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _sizedHeight(10),
                    const CustomTextField(),
                    _sizedHeight(10),
                    const CustomTextField(
                      obSecureText: true,
                    ),
                    const ForgetPassword(),
                  ],
                ),
                _sizedHeight(15),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const SignInButton(),
                ),
                _sizedHeight(10),
                const SocialButtons()
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox _sizedHeight(double value) {
    return SizedBox(
      height: value,
    );
  }
}
