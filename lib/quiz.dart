import 'package:flutter/material.dart';
import 'package:quiz_app/mainscreen_content.dart';
import 'package:quiz_app/question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'mainscreen-content';

  void changeScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = MainscreenContent(changeScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = const QuestionScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 93, 24, 135),
                Color.fromARGB(255, 68, 16, 100),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: screenWidget,
          ),
        ),
      ),
    );
  }
}
