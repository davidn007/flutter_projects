import 'package:flutter/material.dart';

class QuestionOption extends StatelessWidget {
  QuestionOption(
    this.alphaOption,
    this.optionText,
  );
  final String alphaOption;
  final String optionText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          alphaOption,
          style: TextStyle(fontSize: 20.0),
        ),
        SizedBox(width: 10.0),
        Text(
          optionText,
          style: TextStyle(fontSize: 20.0),
        ),
      ],
    );
  }
}
