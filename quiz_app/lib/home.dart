import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';
import './models/question.dart';
import './question_box.dart';
import './result.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  final _questions = [
    {
      0: [
        Question(
            'A seleção brasileira de futebol possui 5 títulos mundiais', 1),
        Question('A seleção brasileira de futebol possui 6 títulos mundiais', 0)
      ]
    },
    {
      1: [
        Question('O Flamengo é campeão mundial', 1),
        Question('O Flamengo não é campeão mundial', 0)
      ]
    },
    {
      2: [
        Question('O Palmeiras é campeão mundial', 0),
        Question('O Palmeiras não é campeão mundial', 1)
      ]
    },
    {
      3: [
        Question('O atual técnico da seleção brasileira é o Tite', 1),
        Question('O atual técnico da seleção brasileira é o Luxa', 0)
      ]
    }
  ];
  int result = 0;
  int _index = 0;

  void nextQuestion(int value) {
    setState(() {
      _index++;
      result += value;
    });
  }

  void reset() {
    setState(() {
      _index = 0;
      result = 0;
    });
  }

  String getResultMessage() {
    if (result < 2) {
      return 'Oops... Tente outra vez.';
    } else if (result < 3) {
      return 'Quase lá...';
    }

    return 'Você acertou tudo!';
  }

  String _getTitle() {
    return _index < _questions.length ? 'Questions ${_index + 1}' : 'Resultado';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(this._getTitle()),
        ),
      ),
      body: _index < _questions.length
          ? QuestionBox(_index, _questions, nextQuestion)
          : Result(getResultMessage(), this.reset),
    );
  }
}
