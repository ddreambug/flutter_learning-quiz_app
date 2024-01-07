import 'package:flutter/material.dart';
import 'package:quiz_app/models/styled_text.dart';

class QuestionSummary extends StatelessWidget {
  //dipanggil di resultscreen
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    listCheck(int dataIndex) {
      final splitSummary = summaryData[dataIndex];

      bool isRightAnswer =
          splitSummary['correct_answer'] == splitSummary['user_answer'];

      return isRightAnswer;
    }

    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map((data) {
          return Row(children: [
            CircleAvatar(
              backgroundColor: (listCheck(data['question_index'] as int)
                  ? const Color.fromARGB(255, 154, 255, 152)
                  : const Color.fromARGB(255, 199, 64, 64)),
              child: Text(((data['question_index'] as int) + 1).toString()),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  StyledText(
                    text: (data['question'] as String),
                    fontsize: 14,
                    fontColor: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  const SizedBox(height: 4),
                  StyledText(
                    text: (data['user_answer'] as String),
                    fontsize: 12,
                    fontColor: const Color.fromARGB(255, 216, 186, 227),
                  ),
                  const SizedBox(height: 2),
                  StyledText(
                    text: (data['correct_answer'] as String),
                    fontsize: 12,
                    fontColor: const Color.fromARGB(255, 151, 230, 149),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ]);
        }).toList()),
      ),
    );
  }
}
