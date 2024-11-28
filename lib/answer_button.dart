import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.goToNextQuestion, required this.answer});

  final void Function() goToNextQuestion;
  final String answer;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        goToNextQuestion();
      },
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          backgroundColor: const Color.fromARGB(221, 23, 2, 98),
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
      child: Text(
        answer,
        textAlign: TextAlign.center,
      ),
    );
  }
}
