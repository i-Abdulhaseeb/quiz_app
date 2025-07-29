import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  StartScreen(this.switchScreen, {super.key});
  final void Function() switchScreen;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(129, 255, 255, 255),
          ),
          const SizedBox(height: 20),
          const Text(
            "Learn Flutter the Fun Way!",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: switchScreen,
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.purple,
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              "Start Quiz",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
