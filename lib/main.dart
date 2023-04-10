import 'package:flutter/material.dart';

import './result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionindex = 0;
  var _finalscore = 0;

  void resetquiz() {
    setState(() {
      _questionindex = 0;
      _finalscore = 0;
    });
  }

  void _ansewerquestion(int score) {
    _finalscore += score;
    setState(() {
      _questionindex += 1;
    });
    if (_questionindex < questions.length) {}
    print(_questionindex);
  }

  final questions = [
    {
      'questiontext': 'what is your fav color ',
      'answers': [
        {'text': 'blue', 'score': 4},
        {'text': 'red', 'score': 2},
        {'text': 'black', 'score': 7},
        {'text': 'pink', 'score': 11},
      ]
    },
    {
      'questiontext': 'whats your fav animal',
      'answers': [
        {'text': 'cat', 'score': 3},
        {'text': 'dog', 'score': 1},
        {'text': 'frog', 'score': 9},
        {'text': 'lizard', 'score': 10},
      ]
    },
    {
      'questiontext': 'and answer something now',
      'answers': [
        {'text': 'ahaaa', 'score': 3},
        {'text': 'arey entra', 'score': 10},
        {'text': 'kaffea', 'score': 3},
        {'text': 'anthey', 'score': 9},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('first ever app again!'),
        ),
        body: _questionindex < questions.length
            ? quiz(questions, _questionindex, _ansewerquestion)
            : result(_finalscore, resetquiz),
      ),
    );
  }
}
