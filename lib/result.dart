import 'package:flutter/material.dart';

class result extends StatelessWidget {
  final int finalscore;
  final Function resethandler;
  result(this.finalscore, this.resethandler) {}

  String get resultphrase {
    String resulttext;
    if (finalscore <= 9) {
      resulttext = 'How are you normal';
    } else if (finalscore <= 12) {
      resulttext = 'Parvale';
    } else {
      resulttext = 'You are not at all normal \n Are u wednesday?';
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultphrase,
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
            onPressed: resethandler,
            child: Text(
              'reset the quiz',
            ),
            textColor: Colors.blue)
      ],
    ));
  }
}
