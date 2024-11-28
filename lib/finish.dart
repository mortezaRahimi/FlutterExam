import 'package:basics/result_item.dart';
import 'package:flutter/material.dart';
import 'package:basics/models/answer.dart';
import 'package:google_fonts/google_fonts.dart';

class FinishScreen extends StatelessWidget {
  const FinishScreen(
      {super.key, required this.resetExam, required this.answers});

  final void Function() resetExam;
  final List<Answer> answers;

  int rightOnes() {
    var m = 0;
    answers.forEach((ans) => ans.userWereRight ? ++m : m);
    return m;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'You Answered ${rightOnes()} out of ${answers.length} questions correctly!',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 500,
              child: SingleChildScrollView(
                child: Column(
                  children: answers.map((answer) {
                    return ResultItem(answer, answers.indexOf(answer) + 1);
                  }).toList(),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: () {
                resetExam();
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('Reset Exam!'),
              iconAlignment: IconAlignment.start,
            )
          ],
        ),
      ),
    );
  }
}
