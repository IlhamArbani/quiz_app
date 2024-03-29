import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 33, 5, 109),
          Color.fromARGB(255, 68, 21, 139)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: activeScreen == 'start-screen'
            ? StartScreen(switchScreen)
            : QuestionsScreen(),
      )),
    );
  }
}
