import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton(this.message, this.ontap, {super.key});
  String message;
  final void Function() ontap;
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 56, 38, 87),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      child: Text(message, textAlign: TextAlign.center),
    );
  }
}
