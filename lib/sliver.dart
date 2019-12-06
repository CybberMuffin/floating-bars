import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  final picIndex;
  HeroPage({Key key, this.picIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int i = picIndex < 4 ? picIndex : picIndex % 4;
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
      ),
      body: Hero(
        tag: 'pic_$picIndex',
        child: Image.asset('assets/images/item_pic_$i.jpg'),
      ),
    );
  }
}
