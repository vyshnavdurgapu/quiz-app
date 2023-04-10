import 'package:flutter/material.dart';

class answer extends StatelessWidget {
  final Function selecthandler;
  final String answertext;
  answer(this.answertext, this.selecthandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answertext),
        color: Colors.blue,
        onPressed: selecthandler,
        textColor: Colors.white,
      ),
    );
  }
}
