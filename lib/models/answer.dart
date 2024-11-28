class Answer {
  Answer(
      {required this.answer,
      required this.right,
      required this.userWereRight,
      required this.question,
      required this.rightAnswer});

  final String answer;
  final bool right;
  final bool userWereRight;
  final String rightAnswer;
  final String question;
}
