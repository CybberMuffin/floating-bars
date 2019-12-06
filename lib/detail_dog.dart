import 'package:flutter/material.dart';

class DetailDog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Doggo info"),
      ),
      body: Center(
        child: Text('Given text was $args'),
      ),
    );
  }
}
