import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var questionNo = 0;

  void changeQuestion(String listAnswer) {
    widget.onSelectAnswer(listAnswer);

    setState(() {
      questionNo++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[questionNo];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.tiltNeon(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.normal,
                letterSpacing: 0.2,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswer().map((listAnswer) {
              return AnswerButton(
                answerText: listAnswer,
                onTap: () {
                  changeQuestion(listAnswer);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
