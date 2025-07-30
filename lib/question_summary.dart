import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  QuestionSummary(this.summary, {super.key});
  List<Map<String, Object>> summary;
  Widget colorDecider(String uA, String cA, String index) {
    if (uA != cA) {
      return Container(
        height: 20,
        width: 20,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Text(
          index,
          style: GoogleFonts.lato(fontWeight: FontWeight.bold),
        ),
      );
    } else {
      return Container(
        height: 20,
        width: 20,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 99, 181, 232),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Text(
          index,
          style: GoogleFonts.lato(fontWeight: FontWeight.bold),
        ),
      );
    }
  }

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,

      child: SingleChildScrollView(
        child: Column(
          children: summary.map((value) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                colorDecider(
                  value['user_answer'] as String,
                  value['correct_answer'] as String,
                  (((value['question_index']) as int) + 1).toString(),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        value['question'] as String,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        value['user_answer'] as String,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 232, 10, 232),
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        value['correct_answer'] as String,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 112, 160, 237),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
