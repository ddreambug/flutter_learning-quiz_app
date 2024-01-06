import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.onReset,
    required this.choosedAnswer,
  });

  final void Function() onReset;
  final List<String> choosedAnswer;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < choosedAnswer.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': choosedAnswer[i]
        },
      );
    }
    return summary;
  }

  @override
  Widget build(context) {
    final getSummary = getSummaryData();
    final numberOfQuestion = questions.length;
    final numberOfCorrectAnswer = getSummary.where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numberOfCorrectAnswer out of $numberOfQuestion question correctly!',
            ),
            const SizedBox(height: 30),
            QuestionSummary(summaryData: getSummary),
            TextButton.icon(
              onPressed: onReset,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.restore_rounded),
              label: Text(
                'Restart Quiz!',
                style: GoogleFonts.poppins(fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
