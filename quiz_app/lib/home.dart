import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  final questions = [];
  int result = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questions'),
      ),
      body: Text('body')
    );
  }
}