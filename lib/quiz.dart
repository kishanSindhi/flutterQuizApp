import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/questio.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> que;
  final int queIndex;
  final void Function(int scoreBoard) answerQuestion;

  const Quiz({
    required this.que,
    required this.answerQuestion,
    required this.queIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),
        Question(que[queIndex]["questionText"] as String),
        SizedBox(height: 20),
        ...(que[queIndex]["answerText"] as List<Map<String, dynamic>>)
            .map((answer) {
          var scoreBoard = answer["score"];
          return Answer(
            () => answerQuestion(scoreBoard),
            answer["text"].toString(),
          );
        }).toList()
      ],
    );
  }
}
