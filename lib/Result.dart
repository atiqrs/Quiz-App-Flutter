import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Result();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Your quiz exam done!",
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
