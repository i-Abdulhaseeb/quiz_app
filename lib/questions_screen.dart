import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_test/questions_and_answers.dart';
import 'package:new_test/answer_button.dart';

class QuestionsQuiz extends StatefulWidget {
  const QuestionsQuiz(this.function1, {super.key});
  final void Function(String answer) function1;
  @override
  State<QuestionsQuiz> createState() {
    return _QuestionsQuizState();
  }
}

class _QuestionsQuizState extends State<QuestionsQuiz> {
  int currentQA = 0;
  void changeQA(String answer) {
    widget.function1(answer);
    setState(() {
      currentQA++;
    });
  }

  void ontap() {}
  @override
  Widget build(context) {
    final currentQuestion = questionsNumber[currentQA];
    return Center(
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.questionsofQuiz,
              style: GoogleFonts.lato(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ...currentQuestion.ShuffleAnswers().map((answer) {
              return AnswerButton(answer, () {
                changeQA(answer);
              });
            }),
          ],
        ),
      ),
    );
  }
}
