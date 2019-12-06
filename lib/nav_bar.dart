import 'package:flutter/material.dart';
import 'package:navi/cats.dart';
import 'package:navi/dogs.dart';
import 'package:navi/home.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> with SingleTickerProviderStateMixin {
  final tabs = [Home(), Cats(), Dogs()];
  int currentIndex = 0;
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: tabs.length);
    tabController.addListener(() {
      setState(() {
        currentIndex = tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          TabBarView(
            children: tabs,
            controller: tabController,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            tabController.animateTo(index);
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pets),
            title: Text("Cats"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Dogs'),
          ),
        ],
        selectedItemColor: Colors.blue,
        selectedFontSize: 14,
      ),
    );
  }
}
