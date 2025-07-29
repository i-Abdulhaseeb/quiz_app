import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  QuestionSummary(this.summary, {super.key});
  List<Map<String, Object>> summary;
  @override
  Widget build(context) {
    return Column(
      children: summary.map((value) {
        return Row(
          children: [
            Text(((value['question_index'] as int) + 1).toString()),
            Expanded(
              child: Column(
                children: [
                  Text(value['question'] as String),
                  const SizedBox(height: 5),
                  Text(value['user_answer'] as String),
                  const SizedBox(height: 5),
                  Text(value['correct_answer'] as String),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
