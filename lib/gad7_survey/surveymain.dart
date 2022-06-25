import 'package:flutter/material.dart';
import 'package:mental_health_app/gad7_survey/quiz.dart';
import 'package:mental_health_app/gad7_survey/result.dart';

class SurveyMainPage extends StatefulWidget {
  const SurveyMainPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SurveyMainPageState();
  }
}

class _SurveyMainPageState extends State<SurveyMainPage> {
  final _questions = const [
    {
      'questionText': 'Feeling nervous, anxious, or on edge?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half the days', 'score': 2},
        {'text': 'Nearly every day', 'score': 3},
      ],
    },
    {
      'questionText': 'Not being able to stop or control worrying?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half the days', 'score': 2},
        {'text': 'Nearly every day', 'score': 3},
      ],
    },
    {
      'questionText': 'Worrying too much about different things?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half the days', 'score': 2},
        {'text': 'Nearly every day', 'score': 3},
      ],
    },
    {
      'questionText': 'Trouble relaxing?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half the days', 'score': 2},
        {'text': 'Nearly every day', 'score': 3},
      ],
    },
    {
      'questionText': 'Being so restless that it is hard to sit still?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half the days', 'score': 2},
        {'text': 'Nearly every day', 'score': 3},
      ],
    },
    {
      'questionText': 'Becoming easily annoyed or irritable?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half the days', 'score': 2},
        {'text': 'Nearly every day', 'score': 3},
      ],
    },
    {
      'questionText': 'Feeling afraid as if something awful might happen?',
      'answers': [
        {'text': 'Not at all', 'score': 0},
        {'text': 'Several days', 'score': 1},
        {'text': 'More than half the days', 'score': 2},
        {'text': 'Nearly every day', 'score': 3},
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
      print('There are more questions left unanswered!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // make sure no overflow when keyboard appears
      backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
          elevation: 5,
          iconTheme: IconThemeData(
            color: Colors.black87,
          ),
          title: Text('GAD-7 Survey'),
        titleTextStyle: TextStyle(
          color: Colors.black87,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: _questionIndex < _questions.length
              ? Quiz(
            answerQuestion: _answerQuestion,
            questionIndex: _questionIndex,
            questions: _questions,
          ) //Quiz
              : Result(_totalScore, _resetQuiz),
        ), //Padding
      ); //Scaffold
  }
}
