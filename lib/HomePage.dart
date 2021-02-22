import 'package:Dropdown/Questions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var questions = ["Hello","World",'Hello World','This is last ques.'];
  var _count=0;
  void _questionChange(){
    setState(() {
      _count = _count+1;
      if(_count>3) {
        _count=0;
      }
    });
    print(_count);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Questions(questions[_count]),
        ElevatedButton(
            child: Text("Button"), onPressed: (){
              print('Clicked 01');
              _questionChange();
            }),
        ElevatedButton(
            child: Text("Button"), onPressed: (){
              print('Clicked 02');
            }),
        ElevatedButton(
            child: Text("Button"), onPressed: (){
              print('Clicked 03');
            }),
        ElevatedButton(
            child: Text("Button"), onPressed: (){
              print('Clicked 04');
            })
      ]),
    ));
  }
}

void ButtonPressed() {
  print("Button Clicked");
}
