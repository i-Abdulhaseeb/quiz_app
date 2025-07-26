import 'package:flutter/material.dart';
import 'package:quiz_app/question_and_answers.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsQuiz extends StatefulWidget {
  const QuestionsQuiz({super.key});
  @override
  State<QuestionsQuiz> createState() {
    return _QuestionsQuizState();
  }
}

class _QuestionsQuizState extends State<QuestionsQuiz> {
  var currentQuestion = questionsNumber[0];
  void ontap() {}
  @override
  Widget build(context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.questionsofQuiz,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ...currentQuestion.ShuffleAnswers().map((answer) {
              return AnswerButton(answer, () {});
            }),
          ],
        ),
      ),
    );
  }
}
