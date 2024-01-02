import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  //const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'question',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        //next update answer button question and function relevant to question.dart
        AnswerButton('question1', () {}),
        AnswerButton('question2', () {}),
        AnswerButton('question3', () {}),
        AnswerButton('question4', () {}),
      ],
    );
  }
}
