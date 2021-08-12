import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function() resetHandler;

  const Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText = "Your score is ";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Text(
            "$resultPhrase$resultScore",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          ElevatedButton.icon(
            onPressed: resetHandler,
            icon: Icon(Icons.refresh),
            label: Text("Reset"),
          )
        ],
      ),
    );
  }
}
