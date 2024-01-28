import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/screens/summary_screen/question_number.dart';

class QuestionItem extends StatelessWidget {
  const QuestionItem({
    super.key,
    required this.questionSummary,
  });

  final Map<String, Object> questionSummary;

  @override
  Widget build(BuildContext context) {
    final bool isCorrectAnswer =
        questionSummary['user_answer'] == questionSummary['correct_answer'];
    final String questionNumber =
        ((questionSummary['question_index'] as int) + 1).toString();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionNumber(
          questionNumber: questionNumber,
          isCorrectAnswer: isCorrectAnswer,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                questionSummary['question'] as String,
                style: GoogleFonts.ubuntu(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                questionSummary['user_answer'] as String,
                style: const TextStyle(
                  color: Color.fromARGB(255, 202, 171, 252),
                ),
              ),
              Text(
                questionSummary['correct_answer'] as String,
                style: const TextStyle(
                  color: Color.fromARGB(255, 181, 254, 246),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
