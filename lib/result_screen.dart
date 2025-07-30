import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_test/questions_and_answers.dart';
import 'package:new_test/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.function1, this.answers, {super.key});
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < answers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questionsNumber[i].questionsofQuiz,
        'correct_answer': questionsNumber[i].answers[0],
        'user_answer': answers[i],
      });
    }
    return summary;
  }

  final void Function() function1;
  final List<String> answers;

  @override
  Widget build(context) {
    final totalQ = questionsNumber.length;
    final summaryData = getSummaryData();
    final correctAnswersChoosen = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return Center(
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              'You answered $correctAnswersChoosen out of $totalQ questions correctly',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(191, 255, 255, 255),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            QuestionSummary(getSummaryData()),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: function1,
              icon: Icon(Icons.restart_alt_outlined, weight: 30),
              label: const Text("Restart Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}
