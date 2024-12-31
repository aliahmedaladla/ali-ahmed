import 'package:flutter/material.dart';

import 'Image.dart';
import 'Text.dart';
import 'password2.dart';

class PasswordWidget extends StatelessWidget {
  final Color color;
  final bool showButton;
  final bool showText;
  final String text;
  final int activeDotsCount;

  const PasswordWidget({
    Key? key,
    required this.color,
    this.showButton = true,
    this.showText = false,
    this.text = "Forgot your password?",
    this.activeDotsCount = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BubblesWidget(
          bubbles: [
            {
              'imagePath': 'Images/bubble 02.png',
              'top': -5.0,
              'left': -5.0,
              'width': 300.0
            },
            {
              'imagePath': 'Images/bubble 01.png',
              'top': -5.0,
              'left': -5.0,
              'width': 250.0
            },
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 80),
              WidgetImages(
                imagePath: 'Images/artist-2 1.png',
                name: "Hello, Romina!!",
              ),
              const SizedBox(height: 40),
              const Text(
                "Type your password",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  8,
                      (index) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: index < activeDotsCount ? color : Colors.grey.shade300,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              if (showText) ...[
                const SizedBox(height: 40),
                Text(
                  text,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
              if (showButton) ...[
                const Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Password2(),
                              ),
                            );
                          },
                          child: const CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 20,
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
