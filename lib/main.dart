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
      "questionText": "Who is PM of India?",
      "answerText": [
        {"text": "Rahul Gandhi", "score": 0},
        {"text": "Narendra Modi", "score": 1},
        {"text": "Yogi Aditya Nath", "score": 0},
        {"text": "Sonia Gandhi", "score": 0},
      ],
    },
    {
      "questionText": "Currency of India is...",
      "answerText": [
        {"text": "Dollar", "score": 0},
        {"text": "Yen", "score": 0},
        {"text": "Rupees", "score": 1},
        {"text": "Pound", "score": 0},
      ],
    },
    {
      "questionText":
          "Find the similar relation: Court : Justice :: School : ?",
      "answerText": [
        {"text": "Teacher", "score": 0},
        {"text": "Headmaster", "score": 0},
        {"text": "Education", "score": 1},
        {"text": "Student", "score": 0},
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
