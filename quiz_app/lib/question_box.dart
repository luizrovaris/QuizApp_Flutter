import 'package:flutter/material.dart';

class QuestionBox extends StatelessWidget{
  final _index;
  final _questions;
  final Function nextQuestion;

  QuestionBox(this._index, this._questions, this.nextQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
              Text('Seleciona a afirmação correta')
            ]
        ),
        Row(
          children: <Widget>[ElevatedButton(
            onPressed: () => this.nextQuestion(_questions[_index][_index][0].value),
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)
              ),
              elevation: 15.0
            ),
            child: Text(_questions[_index][_index][0].question)
          )],
        ),
        Row(
          children: <Widget>[
            Text('OU')
          ],
        ),
        Row(
          children: <Widget>[ElevatedButton(
            onPressed: () => this.nextQuestion(_questions[_index][_index][1].value),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)
              ),
              elevation: 15.0
            ),
            child: Text(_questions[_index][_index][1].question)
          )],
        )
      ],
    );
  }
}