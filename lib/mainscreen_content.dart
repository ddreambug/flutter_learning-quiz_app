import 'package:flutter/material.dart';

class MainscreenContent extends StatelessWidget {
  const MainscreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    void onPressed() {}

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 200,
        ),
        const SizedBox(height: 30),
        const Text(
          "Learn Flutter the fun way!",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 30),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color.fromARGB(255, 87, 43, 153),
          ),
          onPressed: onPressed,
          child: const Text("Start Quiz"),
        )
      ],
    );
  }
}
