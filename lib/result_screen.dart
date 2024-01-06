import 'package:flutter/foundation.dart';
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
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered X out of Y question correctly!'),
            const SizedBox(height: 30),
            //const Text('String List what you answer correctly...'),
            QuestionSummary(summaryData: getSummaryData()),
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
