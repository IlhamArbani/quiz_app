import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.changeScreen, {super.key});

  final void Function() changeScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Opacity(
          opacity: 0.5,
          child: Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
        ),
        const SizedBox(
          height: 80,
        ),
        const Text(
          'Learn Flutter The Fun Way',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: changeScreen,
          icon: const Icon(Icons.arrow_right_alt),
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          label: const Text('Start Quiz'),
        )
      ]),
    );
  }
}
