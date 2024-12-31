import 'package:flutter/material.dart';

class BubblesWidget extends StatelessWidget {
  final List<Map<String, dynamic>> bubbles;

  const BubblesWidget({Key? key, required this.bubbles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: bubbles.map((bubble) {
        return Positioned(
          top: bubble['top'],
          left: bubble['left'],
          right: bubble['right'],
          child: Image.asset(
            bubble['imagePath'],
            width: bubble['width'],
          ),
        );
      }).toList(),
    );
  }
}
