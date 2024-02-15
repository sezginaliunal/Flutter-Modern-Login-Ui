import 'package:flutter/material.dart';
import 'package:modern_login_ui/constants/colors.dart';
import 'package:modern_login_ui/views/login.dart';

void main() => runApp(const LoginPageUI());

class LoginPageUI extends StatelessWidget {
  const LoginPageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      theme: ThemeData.light()
          .copyWith(scaffoldBackgroundColor: AppColors.scaffoldColor),
      home: const LoginPage(),
    );
  }
}
