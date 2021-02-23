import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answares extends StatelessWidget {
  final Function questionChange;
  final String answareValue;

  Answares(this.questionChange, this.answareValue);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
            child: Text(answareValue), 
            onPressed: questionChange
            // (){
            //   print('Clicked 01');
            //   HomePage._questionChange();
            // }
            ),
    );
  }
}