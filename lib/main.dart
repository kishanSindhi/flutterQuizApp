import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/questio.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var queIndex = 0;

  void answerQuestion() {
    setState(
      () {
        queIndex = queIndex + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var que = [
      "What's your favourite color?",
      "What's your favourite animal?",
      "What's your favourite color?",
      "What's your favourite animal?",
      "What's your favourite color?",
      "What's your favourite animal?",
      "What's your favourite color?",
      "What's your favourite animal?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("First App..."),
        ),
        body: Center(
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 20),
                Question(que[queIndex]),
                SizedBox(height: 20),
                Answer(selectHandler: answerQuestion),
                Answer(selectHandler: answerQuestion),
                Answer(selectHandler: answerQuestion),
                Answer(selectHandler: answerQuestion),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Answer(slectHandler: _answerQuestion),
