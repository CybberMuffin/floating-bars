import 'package:flutter/material.dart';
import 'package:navi/cats.dart';
import 'package:navi/detail_dog.dart';
import 'package:navi/dogs.dart';
import 'package:navi/home.dart';
import 'package:navi/nav_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NavBar(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => Home(),
      //   '/cats': (context) => Cats(),
      //   '/dogs': (context) => Dogs(),
      //   '/detail': (context) => DetailDog(),
      // },
    );
  }
}
