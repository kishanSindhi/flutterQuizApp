import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/questio.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final que = [
    {
      "questionText": "What's your favourite color?",
      "answerText": ["Red", "Black", "Yellow", "Orange"],
    },
    {
      "questionText": "What's your favourite animal?",
      "answerText": ["Rabbit", "Elephant", "Lion", "Tiger"],
    },
    {
      "questionText": "Which is your favourite MCU character?",
      "answerText": ["Thor", "Black Widow", "Cap", "Tony Stark"],
    },
  ];
  var queIndex = 0;

  void answerQuestion() {
    if (queIndex < que.length) {
      setState(
        () {
          queIndex = queIndex + 1;
        },
      );
    } else {}
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
            child: (queIndex < que.length)
                ? Column(
                    children: [
                      SizedBox(height: 15),
                      Question(que[queIndex]["questionText"] as String),
                      SizedBox(height: 20),
                      ...(que[queIndex]["answerText"] as List<String>)
                          .map((answer) {
                        return Answer(
                          selectHandler: answerQuestion,
                          answerText: answer,
                        );
                      }).toList()
                    ],
                  )
                : Text(
                    "Done",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
