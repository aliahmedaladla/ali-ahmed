import 'package:flutter/material.dart';
import 'password_content.dart';

class Password2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PasswordWidget(
        color: Colors.red,
        showButton: false,
        activeDotsCount: 8,
        showText: true,
        text: "Forgot your password?",
      ),
    );
  }
}
