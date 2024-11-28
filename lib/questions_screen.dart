import 'package:basics/answer_button.dart';
import 'package:basics/data/questions.dart';
import 'package:basics/models/quiz_question.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:basics/models/answer.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.goToFinishScreen});

  final void Function(List<Answer> answers) goToFinishScreen;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var counter = 0;
  final List<Answer> answers = [];

  void answerQuestion(Answer answer) {
    setState(() {
      if (counter == questions.length - 1) {
        widget.goToFinishScreen(answers);
      } else {
        counter += 1;
      }
    });
  }

  @override
  Widget build(context) {
    final QuizQuestion currentQ = questions[counter];

    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQ.question,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 205, 144, 230),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ...currentQ.getShuffledList.map((_answer) {
              return AnswerButton(
                  goToNextQuestion: () {
                    if (answers.length != questions.length) {
                      var userWereRight = false;
                      if (_answer.right) {
                        userWereRight = true;
                      }
                      final Answer answer = Answer(
                          answer: _answer.answer,
                          right: _answer.right,
                          userWereRight: userWereRight,
                          rightAnswer: currentQ.getCorrectAnswer.answer,
                          question: currentQ.question);
                      answers.add(answer);
                      answerQuestion(answer);
                    }
                  },
                  answer: _answer.answer);
            })
          ],
        ),
      ),
    );
  }
}
