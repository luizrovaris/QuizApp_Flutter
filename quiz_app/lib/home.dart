import 'package:flutter/material.dart';
import './models/question.dart';
import './question_box.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  final _questions = [
    {
      0: [
        Question('A seleção brasileira de futebol possui 5 títulos mundiais', 1),
        Question('A seleção brasileira de futebol possui 6 títulos mundiais', 0)
      ]
    },
    {
      1: [
        Question('O Flamengo é campeão mundial', 1),
        Question('O Flamengo não é campeão mundial', 0)]
    },
    {
      2: [
        Question('O Palmeiras é campeão mundial', 0),
        Question('O Palmeiras não é campeão mundial', 1)]
    },
    {
      3: [
        Question('O atual técnico da seleção brasileira é o Tite', 1),
        Question('O atual técnico da seleção brasileira é o Luxa', 0)]
    }
  ];
  int result = 0;
  int _index = 0;

  void nextQuestion(int value){
    setState(() {
      _index++;
      result += value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questions'),
      ),
      body: QuestionBox(_index, _questions, nextQuestion)
    );
  }
}