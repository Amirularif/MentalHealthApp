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
            color: Colors.black87
        )
        ),
        textColor: Colors.black87,
        shape: RoundedRectangleBorder(
            side: BorderSide(
            color: Colors.amber.shade200,
            width: 1,
            style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(12)
        ),
        color: Colors.amber.shade200,
        /*color: Colors.amber.shade200,
        textColor: Colors.black87,
        child: Text(answerText),
        onPressed: selectHandler,*/
      ),
    );
  }
}
