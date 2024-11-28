import 'dart:developer';

import 'package:basics/finish.dart';
import 'package:basics/home_page.dart';
import 'package:basics/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:basics/models/answer.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<Answer> answers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void goToFinishScreen(List<Answer> _answers) {
    answers = _answers;
    _answers.forEach((element) => log(element.answer));
    setState(() {
      activeScreen = 'finish-screen';
    });
  }

  void resetExam() {
    setState(() {
      activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = HomePage(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(goToFinishScreen: goToFinishScreen);
    } else if (activeScreen == 'finish-screen') {
      screenWidget = FinishScreen(answers: answers, resetExam: resetExam);
    } else if (activeScreen == 'start-screen') {
      screenWidget = HomePage(switchScreen);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
