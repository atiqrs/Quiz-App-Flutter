import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var questions = ["Hello","World",'Hello World','This is last ques.'];
  var count=0;
  void questionChange(){
    count = count+1;
    print(count);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Text(questions[count]),
        ElevatedButton(
            child: Text("Button"), onPressed: (){
              print('Clicked 01');
              questionChange();
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
