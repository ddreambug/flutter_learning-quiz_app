import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  //const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var questionNo = 0;

  void changeQuestion() {
    setState(() {
      if (questionNo == 5) {
        questionNo = 0;
      } else {
        questionNo++;
      }
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
              style: const TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswer().map((listAnswer) {
              return AnswerButton(
                  answerText: listAnswer, onTap: changeQuestion);
            }),
          ],
        ),
      ),
    );
  }
}
