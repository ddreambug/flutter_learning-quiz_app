import 'package:flutter/material.dart';

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
        const Text('question'),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('question1'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('question2'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('question3'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('question4'),
        ),
      ],
    );
  }
}
