import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionNumber extends StatelessWidget {
  const QuestionNumber({
    super.key,
    required this.questionNumber,
    required this.isCorrectAnswer,
  });

  final String questionNumber;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer ? Colors.green : Colors.red,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumber,
        style: GoogleFonts.ubuntu(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
