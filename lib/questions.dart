import 'package:flutter/material.dart';
import 'package:quiz_app/questions_changing.dart';

class QuestionsQuiz extends StatefulWidget {
  const QuestionsQuiz({super.key});
  @override
  State<QuestionsQuiz> createState() {
    return _QuestionsQuizState();
  }
}

class _QuestionsQuizState extends State<QuestionsQuiz> {
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text("Question 1"),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: () {}, child: const Text("Answer 1")),
          ElevatedButton(onPressed: () {}, child: const Text("Answer 2")),
          ElevatedButton(onPressed: () {}, child: const Text("Answer 3")),
          ElevatedButton(onPressed: () {}, child: const Text("Answer 4"))
        ],
      ),
    );
  }
}
