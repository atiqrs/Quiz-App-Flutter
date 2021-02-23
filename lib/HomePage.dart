import 'package:Dropdown/Answares.dart';
import 'package:Dropdown/Questions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //var questions = ["Hello","World",'Hello World','This is last ques.'];

  var questionAndAnswareText = [
    {
      'ques': 'question 1',
      'ans': ['ans 1.1', 'ans 1.2', 'ans 1.3']
    },
    {
      'ques': 'question 2',
      'ans': ['ans 2.1', 'ans 2.2', 'ans 2.3']
    },
    {
      'ques': 'question 3',
      'ans': ['ans 3.1', 'ans 3.2', 'ans 3.3']
    }
  ];

  //Demo for Quize question and answare create and input
  void inputValue(){
    String _1 = "question 4";
        var _2 = 'answare 1';
        var _3 = 'answare 2';
        var _4 = 'answare 3';
        var aObject = {
          'ques': _1,
          'ans': [_2, _3, _4],
        };
        questionAndAnswareText.add(aObject);
  }

        
  var _count = 0;
  void _questionChange() {
    
    setState(() {
      _count = _count + 1;
      if (_count >= questionAndAnswareText.length) {
        inputValue();
        _count = 0;
      }
    });
    print(_count);
    print(questionAndAnswareText.length);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        //Questions(questions[_count]),
        Questions(questionAndAnswareText[_count]['ques']),
        ...(questionAndAnswareText[_count]['ans'] as List<String>)
            .map((answare) {
          return Answares(_questionChange, answare);
        }).toList(),
        //Answares(_questionChange),
      ]),
    ));
  }
}

void ButtonPressed() {
  print("Button Clicked");
}
