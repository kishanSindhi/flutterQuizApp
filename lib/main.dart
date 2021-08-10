import 'package:flutter/material.dart';
import 'package:quiz_app/questio.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var queIndex = 0;

  void answerQuestion() => print("Answer choosen!");

  @override
  Widget build(BuildContext context) {
    var que = [
      "What's your favourate color?",
      "What's your favourate animal?",
      "What's your favourate color?",
      "What's your favourate animal?",
      "What's your favourate color?",
      "What's your favourate animal?",
      "What's your favourate color?",
      "What's your favourate animal?",
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
                ElevatedButton(
                  onPressed: answerQuestion,
                  child: Text("Ans 1"),
                ),
                ElevatedButton(
                  onPressed: () => debugPrint("Button 1 pressed"),
                  child: Text("Ans 2"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      queIndex = queIndex + 1;
                    });
                    debugPrint("Button 2 pressed");
                  },
                  child: Text("Ans 3"),
                ),
                ElevatedButton(
                  onPressed: answerQuestion,
                  child: Text("Ans 4"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
