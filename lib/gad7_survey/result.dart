import 'package:flutter/material.dart';
import 'package:mental_health_app/pages/dashboard.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final void Function() resetHandler;

  Result(this.resultScore, this.resetHandler);

//Remark Logic
  String get resultPhrase {
    String resultText;
    if (resultScore >= 15) {
      resultText = 'You have Severe anxiety. It is okay, we are here to help';
      print(resultScore);
    } else if (resultScore >= 10) {
      resultText = 'You have moderate anxiety';
      print(resultScore);
    } else if (resultScore >= 5) {
      resultText = 'You have mild anxiety';
    } else if (resultScore >= 0) {
      resultText = 'You have minimal anxiety';
    } else {
      resultText = 'Invalid answer!';
      print(resultScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Score ' '$resultScore',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,

          ), //Text
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text

          SizedBox(height: 10),

          FlatButton(
            child: Text(
              'Restart Survey?',
            ), //Text
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
          FlatButton(
            child: Text(
              'Back to Dashboard?',
            ), //Text
            textColor: Colors.blue,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dashboard()),
              );
            },
          ),
          //FlatButton
        ], //<Widget>[]
      ), //Column
    ); //Center
  }
}
