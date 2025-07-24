import 'package:flutter/material.dart';

class BuildBackgroundWidget extends StatelessWidget {
  void PressME() {}
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.purple),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/quiz-logo.png', width: 200),
            const SizedBox(height: 20),
            const Text("Learn Flutter the Fun Way!",
                style: TextStyle(color: Colors.white, fontSize: 25)),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: PressME,
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white),
              child: const Text("Start Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}
