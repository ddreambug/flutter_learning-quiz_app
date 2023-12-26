import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  //const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionState();
  }
}

class _QuestionState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return const Text('question');
  }
}
