import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _que = [
    {
      "questionText": "What's your favourite color?",
      "answerText": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 5},
        {"text": "Green", "score": 3},
        {"text": "White", "score": 1},
      ],
    },
    {
      "questionText": "What's your favourite animal?",
      "answerText": [
        {"text": "Rabbit", "score": 10},
        {"text": "Lion", "score": 5},
        {"text": "Tiger", "score": 3},
        {"text": "Peacock", "score": 1},
      ],
    },
    {
      "questionText": "Which is your favourite MCU character?",
      "answerText": [
        {"text": "RDJ", "score": 1},
        {"text": "Cap", "score": 1},
        {"text": "Black Widow", "score": 1},
        {"text": "Hulk", "score": 1},
      ],
    },
  ];
  var queIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      queIndex = 0;
      _totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    _totalScore += score;
    if (queIndex < _que.length) {
      setState(
        () {
          queIndex = queIndex + 1;
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("First App..."),
        ),
        body: Center(
          child: SafeArea(
            child: (queIndex < _que.length)
                ? Quiz(
                    queIndex: queIndex,
                    answerQuestion: answerQuestion, // 69th line
                    que: _que,
                  )
                : Result(_totalScore, _resetQuiz),
          ),
        ),
      ),
    );
  }
}
