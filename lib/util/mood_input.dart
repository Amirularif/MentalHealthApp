import 'package:flutter/material.dart';

enum DialogsAction { yes, cancel }

class MoodInput {
  static Future<DialogsAction> yesCancelDialog(
      BuildContext context,
      String title,
      String body,
      ) async {
    final action = await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          title: Text(title),
          content: Text(body),
          actions: <Widget>[
            TextButton(
              onPressed: () =>
                  Navigator.of(context).pop(DialogsAction.cancel),
              child: Text(
                '취소',
                style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.bold),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(DialogsAction.yes),
              child: Text(
                '저장',
                style: TextStyle(
                    color: Colors.lightBlue, fontWeight: FontWeight.bold),
              ),
            )
          ],
        );
      },);
    return (action != null) ? action : DialogsAction.cancel;
  }
}
