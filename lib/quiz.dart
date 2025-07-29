import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:new_test/start_screen.dart';
import 'package:new_test/questions_screen.dart';
import 'package:new_test/questions_and_answers.dart';
import 'package:new_test/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> choosenAnswers = [];
  List<String> choosenAnswerscopy = [];
  var currentScreen = "start-screen";
  void setToCurrentScreen() {
    setState(() {
      choosenAnswers = [];
      currentScreen = "start-screen";
    });
  }

  void switchScreen() {
    setState(() {
      currentScreen = "question-screen";
    });
  }

  void addAnswers(String answer) {
    choosenAnswers.add(answer);

    if (choosenAnswers.length == questionsNumber.length) {
      setState(() {
        currentScreen = "result-screen";
      });
    }
  }

  Widget currentScreenFunction() {
    if (currentScreen == "start-screen") {
      return StartScreen(switchScreen);
    } else if (currentScreen == "question-screen") {
      return QuestionsQuiz(addAnswers);
    } else {
      return ResultScreen(setToCurrentScreen, choosenAnswers);
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Color.fromARGB(255, 82, 39, 155)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: currentScreenFunction(),
        ),
      ),
    );
  }
}
