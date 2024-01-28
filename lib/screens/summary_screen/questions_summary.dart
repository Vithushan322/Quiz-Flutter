import 'package:flutter/material.dart';
import 'package:quiz_app/screens/summary_screen/question_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return QuestionItem(
              questionSummary: data,
            );
          }).toList(),
        ),
      ),
    );
  }
}
