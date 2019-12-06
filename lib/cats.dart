import 'package:flutter/material.dart';

class Cats extends StatefulWidget {
  @override
  _CatsState createState() => _CatsState();
}

class _CatsState extends State<Cats> {
  String _textString = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cats"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (text) {
                setState(() {
                  _textString = text;
                });
              },
            ),
            // RaisedButton(
            //   child: Text('Give back'),
            //   onPressed: () {
            //     Navigator.pop(context, _textString);
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
