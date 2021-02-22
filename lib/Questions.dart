import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  String questionsValue;

  Questions(this.questionsValue);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Text(questionsValue,
      style: TextStyle(fontSize: 25),
      textAlign: TextAlign.center,),
    );
  }
}