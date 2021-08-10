import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function() selectHandler;

  const Answer({required this.selectHandler});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text("Ans 1"),
        onPressed: selectHandler,
      ),
    );
  }
}
