import 'package:flutter/material.dart';

import 'Answares.dart';
import 'Questions.dart';

class Quiz extends StatelessWidget {
  final Function questionChange;
  final List<Map<String, Object>> questionAndAnswareText;
  final int count;

  Quiz(
      {@required this.questionChange,
      @required this.questionAndAnswareText,
      @required this.count});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      //Questions(questions[_count]),
      Questions(questionAndAnswareText[count]['ques']),
      ...(questionAndAnswareText[count]['ans'] as List<String>).map((answare) {
        return Answares(questionChange, answare);
      }).toList(),
      //Answares(_questionChange),
    ]);
  }
}
