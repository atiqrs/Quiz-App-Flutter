import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answares extends StatelessWidget {
  final Function questionChange;

  Answares(this.questionChange);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
            child: Text("Button"), 
            onPressed: questionChange
            // (){
            //   print('Clicked 01');
            //   HomePage._questionChange();
            // }
            ),
    );
  }
}