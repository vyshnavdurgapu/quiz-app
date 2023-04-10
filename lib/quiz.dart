import './answer.dart';
import './question.dart';
import 'package:flutter/material.dart';

class quiz extends StatelessWidget {
  final int _questionindex;
  final questions;
  final Function _answerquestion;
  quiz(this.questions, this._questionindex, this._answerquestion) {}
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        question(questions[_questionindex]['questiontext']),
        ...(questions[_questionindex]['answers'] as List<Map>).map((e) {
          return answer(e['text'], () => _answerquestion(e['score']));
        }).toList(),
      ],
    );
  }
}
