import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function() selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: FlatButton(
        onPressed: selectHandler,
        child: Text(answerText,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87
            )
        ),
        textColor: Colors.black87,
        shape: RoundedRectangleBorder(
            side: BorderSide(
                color: Colors.blue.shade100,
                width: 1,
                style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(12)
        ),
        color: Colors.blue.shade100,
        /*color: Colors.indigo,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,*/
      ), //RaisedButton
    ); //Container
  }
}
