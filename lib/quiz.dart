import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var currentScreen = "start-screen";

  void switchScreen() {
    setState(() {
      currentScreen = "question-screen";
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.deepPurple,
                Color.fromARGB(255, 82, 39, 155),
              ], begin: Alignment.centerLeft, end: Alignment.centerRight),
            ),
            child: currentScreen == "start-screen"
                ? StartScreen(switchScreen)
                : const QuestionsQuiz()),
      ),
    );
  }
}
