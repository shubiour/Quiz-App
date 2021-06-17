import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'blue', 'score': 8},
        {'text': 'green', 'score': 7}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'snack', 'score': 6},
        {'text': 'cat', 'score': 3},
        {'text': 'rabbit', 'score': 2}
      ],
    },
    {
      'questionText': 'What\'s your favorite meal?',
      'answers': [
        {'text': 'pasta', 'score': 1},
        {'text': 'pizza', 'score': 1},
        {'text': 'burger', 'score': 1}
      ],
    },
  ];
  var _qusIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _qusIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _qusIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Personality-Quiz',
          ),
        ),
        body: _qusIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                qusIndex: _qusIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
