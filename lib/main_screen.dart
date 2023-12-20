import 'package:flutter/material.dart';
import 'package:quiz_app/mainscreen_content.dart';

class MainScreen extends StatelessWidget {
  const MainScreen(this.colorTop, this.colorBot, {super.key});

  final Color colorTop, colorBot;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colorTop,
            colorBot,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: const Center(
        child: MainscreenContent(),
      ),
    );
  }
}
