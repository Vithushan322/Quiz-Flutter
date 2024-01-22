import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(
          //     'assests/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          Image.asset(
            'assests/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(
              Icons.quiz,
              size: 20,
            ),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
