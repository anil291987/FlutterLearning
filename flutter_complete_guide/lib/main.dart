import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text':'Red', 'score': 15},
        {'text':'Green', 'score': 20},
        {'text':'White', 'score': 25}
        ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text':'Rabbit', 'score': 5},
        {'text':'Snake', 'score': 10},
        {'text':'Elephant', 'score': 15},
        {'text':'Lion', 'score': 20}
        ],
    },
    {
      'questionText': 'What\'s your favorite instructor?',
      'answers': [
        {'text':'Max', 'score': 5},
        {'text':'Max', 'score': 10},
        {'text':'Max', 'score': 15},
        {'text':'Max', 'score': 20}
        ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });

  }


  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('we have more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
