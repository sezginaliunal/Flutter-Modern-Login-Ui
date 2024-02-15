import 'package:flutter/material.dart';
import 'package:modern_login_ui/constants/colors.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({Key? key, this.obSecureText = false})
      : super(key: key);

  final bool obSecureText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obSecureText = false;

  void toggleObsecure() {
    setState(() {
      _obSecureText = !_obSecureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _obSecureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.whiteColor,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
        suffixIcon: widget.obSecureText
            ? IconButton(
                onPressed: toggleObsecure,
                icon: Icon(
                    _obSecureText ? Icons.visibility : Icons.visibility_off),
              )
            : null,
      ),
    );
  }
}
