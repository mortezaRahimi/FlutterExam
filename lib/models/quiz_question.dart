import 'package:basics/models/answer.dart';

class QuizQuestion {
  const QuizQuestion(
    this.question,
    this.answers,
  );

  final String question;
  final List<Answer> answers;

  List<Answer> get getShuffledList {
    final shuffeled = List.of(answers);
    shuffeled.shuffle();
    return shuffeled;
  }

  Answer get getCorrectAnswer {
    return answers.firstWhere((answer) => answer.right);
  }
}
