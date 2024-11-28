import 'package:basics/models/answer.dart';
import 'package:basics/models/quiz_question.dart';

var questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      Answer(
          answer: 'Widget',
          right: true,
          userWereRight: false,
          rightAnswer: '',
          question: ''),
      Answer(
          answer: 'Components',
          right: false,
          userWereRight: false,
          rightAnswer: '',
          question: ''),
      Answer(
          answer: 'Blocks',
          right: false,
          userWereRight: false,
          rightAnswer: '',
          question: ''),
      Answer(
          answer: 'Functions',
          right: false,
          userWereRight: false,
          rightAnswer: '',
          question: ''),
    ],
  ),
  QuizQuestion('How are Flutter UIs built?', [
    Answer(
        answer: 'By combining widgets in code',
        right: true,
        userWereRight: false,
        rightAnswer: '',
        question: ''),
    Answer(
        answer: 'By combining widgets in a visual editor',
        right: false,
        userWereRight: false,
        rightAnswer: '',
        question: ''),
    Answer(
        answer: 'By defining widgets in config files',
        right: false,
        userWereRight: false,
        rightAnswer: '',
        question: ''),
    Answer(
        answer: 'By using XCode for iOS and Android Studio for Android',
        right: false,
        rightAnswer: '',
        question: '',
        userWereRight: false),
  ]),
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    [
      Answer(
          answer: 'Update UI as data changes',
          right: true,
          userWereRight: false,
          rightAnswer: '',
          question: ''),
      Answer(
          answer: 'Update data as UI changes',
          right: false,
          userWereRight: false,
          rightAnswer: '',
          question: ''),
      Answer(
          answer: 'Ignore data changes',
          right: false,
          userWereRight: false,
          rightAnswer: '',
          question: ''),
      Answer(
          answer: 'Render UI that does not depend on data',
          right: false,
          userWereRight: false,
          rightAnswer: '',
          question: '')
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      Answer(
          answer: 'StatelessWidget',
          right: true,
          userWereRight: false,
          rightAnswer: '',
          question: ''),
      Answer(
          answer: 'StatefulWidget',
          right: false,
          userWereRight: false,
          rightAnswer: '',
          question: ''),
      Answer(
          answer: 'Both are equally good',
          right: false,
          userWereRight: false,
          rightAnswer: '',
          question: ''),
      Answer(
          answer: 'None of the above',
          right: false,
          userWereRight: false,
          rightAnswer: '',
          question: ''),
    ],
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      Answer(
          answer: 'The UI is not updated',
          right: true,
          userWereRight: false,
          rightAnswer: '',
          question: ''),
      Answer(
          answer: 'The UI is updated',
          right: false,
          userWereRight: false,
          rightAnswer: '',
          question: ''),
      Answer(
          answer: 'The closest StatefulWidget is updated',
          right: false,
          userWereRight: false,
          rightAnswer: '',
          question: ''),
      Answer(
          answer: 'Any nested StatefulWidgets are updated',
          right: false,
          userWereRight: false,
          rightAnswer: '',
          question: ''),
    ],
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      Answer(
          answer: 'By calling setState()',
          right: true,
          userWereRight: false,
          rightAnswer: '',
          question: ''),
      Answer(
          answer: 'By calling updateData()',
          right: false,
          userWereRight: false,
          rightAnswer: '',
          question: ''),
      Answer(
          answer: 'By calling updateUI()',
          right: false,
          userWereRight: false,
          rightAnswer: '',
          question: ''),
      Answer(
          answer: 'By calling updateState()',
          right: false,
          userWereRight: false,
          rightAnswer: '',
          question: ''),
    ],
  ),
];
