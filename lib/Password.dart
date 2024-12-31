import 'package:flutter/material.dart';
import 'password_content.dart';

class Password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PasswordWidget(
        color: Colors.blue,
        showButton: true,
        activeDotsCount: 5,
        showText: false,
      ),
    );
  }
}
