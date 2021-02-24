import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  var score;
  Result(this.score);

  @override
  Widget build(BuildContext context) {
    return Center(
      //heightFactor: ,
        child: Text(
          "Your quiz exam done!\nScore is: $score",
          style: TextStyle(fontSize: 25,),
          textAlign: TextAlign.center,textDirection: ,
        ),
    );
  }
}
