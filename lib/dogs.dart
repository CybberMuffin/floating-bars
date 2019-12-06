import 'package:flutter/material.dart';

class Dogs extends StatefulWidget {
  @override
  _DogsState createState() => _DogsState();
}

class _DogsState extends State<Dogs> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  CrossAxisAlignment alignment;

  final sizeTween = Tween<double>(begin: 25, end: 300);
  final colorTween = ColorTween(begin: Colors.purple, end: Colors.red);

  final sizeTween1 = Tween<double>(begin: 100, end: 200);
  final colorTween1 = ColorTween(begin: Colors.green, end: Colors.yellow);

  final sizeTween2 = Tween<double>(begin: 100, end: 350);
  final colorTween2 = ColorTween(begin: Colors.blue, end: Colors.orange);

  final sizeTween3 = Tween<double>(begin: 40, end: 100);
  final colorTween3 = ColorTween(begin: Colors.yellow, end: Colors.black);

  final sizeTween4 = Tween<double>(begin: 240, end: 90);
  final colorTween4 = ColorTween(begin: Colors.grey, end: Colors.green);

  @override
  void initState() {
    super.initState();
    alignment = CrossAxisAlignment.start;

    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);

    animation = CurvedAnimation(parent: controller, curve: Curves.easeInOut)
      ..addListener(() {
        setState(() {
          if (controller.isCompleted) controller.repeat(reverse: true);
        });
      });

    controller.forward();
  }

  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bars'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.center_focus_strong),
            onPressed: () {
              setState(() {
                this.alignment = this.alignment == CrossAxisAlignment.start ||
                        this.alignment == CrossAxisAlignment.end
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.start;
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.swap_horiz),
            onPressed: () {
              setState(() {
                this.alignment = this.alignment == CrossAxisAlignment.start
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start;
              });
            },
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: this.alignment,
        children: <Widget>[
          Container(
            color: colorTween.evaluate(animation),
            margin: EdgeInsets.symmetric(vertical: 5),
            height: 75,
            width: sizeTween.evaluate(animation),
          ),
          Container(
            color: colorTween1.evaluate(animation),
            margin: EdgeInsets.symmetric(vertical: 5),
            height: 75,
            width: sizeTween1.evaluate(animation),
          ),
          Container(
            color: colorTween2.evaluate(animation),
            margin: EdgeInsets.symmetric(vertical: 5),
            height: 75,
            width: sizeTween2.evaluate(animation),
          ),
          Container(
            color: colorTween3.evaluate(animation),
            margin: EdgeInsets.symmetric(vertical: 5),
            height: 75,
            width: sizeTween3.evaluate(animation),
          ),
          Container(
            color: colorTween4.evaluate(animation),
            margin: EdgeInsets.symmetric(vertical: 5),
            height: 75,
            width: sizeTween4.evaluate(animation),
          ),
        ],
      ),
    );
  }
}
