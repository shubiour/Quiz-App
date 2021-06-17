import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final  qustionText;

  Question(this.qustionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Text(
        qustionText,
        style: TextStyle(fontSize: 27),
        textAlign: TextAlign.center,
      ),
    );
  }
}
