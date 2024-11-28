import 'package:basics/models/answer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultItem extends StatelessWidget {
  const ResultItem(this.answer, this.number, {super.key});

  final Answer answer;
  final int number;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 10,
                backgroundColor: answer.userWereRight == true
                    ? const Color.fromARGB(255, 97, 146, 214)
                    : const Color.fromARGB(255, 234, 136, 210),
                child: Text('$number'),
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      answer.question,
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      answer.answer,
                      style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 234, 136, 210)),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      answer.rightAnswer,
                      style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 97, 146, 214)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
