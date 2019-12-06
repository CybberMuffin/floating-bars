import 'package:flutter/material.dart';
import 'package:navi/sliver.dart';

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);
  String cattoWords = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.card_giftcard),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.supervised_user_circle),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      body: MyList(),
    );
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 5.0,
      crossAxisSpacing: 5.0,
      children: List.generate(
        10,
        (index) {
          int i = index < 4 ? index : index % 4;
          return Hero(
            tag: 'pic_$index',
            child: GestureDetector(
              child: Image.asset(
                'assets/images/item_pic_$i.jpg',
                fit: BoxFit.fitHeight,
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => HeroPage(
                    picIndex: index,
                  ),
                ),
              ),
            ),
          );
        },
      ),
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
    );
  }
  // return ListView(
  //   children: <Widget>[
  //     ListTile(
  //       title: Text("Doggo"),
  //       trailing: Icon(Icons.pets),
  //       // onTap: () {
  //       //   Navigator.pushNamed(context, '/dogs');
  //       // },
  //     ),
  //     ListTile(
  //       title: Text("Catto"),
  //       trailing: Icon(Icons.pets),
  //       // onTap: () {
  //       //   resultFromCatto(context);
  //       // },
  //     ),
  //   ],
  // );

  resultFromCatto(context) async {
    var result = await Navigator.pushNamed(context, '/cats');
    Scaffold.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        SnackBar(content: Text('$result')),
      );
  }
}
