import 'package:flutter/material.dart';

class MainscreenContent extends StatelessWidget {
  const MainscreenContent(this.changeScreen, {super.key});
  final void Function() changeScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 200,
          color: const Color.fromARGB(139, 255, 255, 255),
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
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color.fromARGB(255, 87, 43, 153),
          ),
          onPressed: changeScreen,
          icon: const Icon(Icons.arrow_right_alt_outlined),
          label: const Text("Start Quiz"),
        )
      ],
    );
  }
}
