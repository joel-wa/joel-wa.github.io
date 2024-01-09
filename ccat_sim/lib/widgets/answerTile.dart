import 'package:flutter/material.dart';

class AnswerTile extends StatefulWidget {
  String answerValue;
  AnswerTile({super.key, required this.answerValue});

  @override
  State<AnswerTile> createState() => _AnswerTileState(answerValue);
}

class _AnswerTileState extends State<AnswerTile> {
  String answerValue;
  bool selected = false;

  _AnswerTileState(this.answerValue);
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: selected,
      onChanged: (val) {
        setState(() {
          selected = val!;
        });
      },
      title: Text(answerValue),
    );
  }
}
