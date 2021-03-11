import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '../routes/application.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool switchStaus = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: Column(
        children: [
          RaisedButton(
              onPressed: () {
                Application.router.navigateTo(context, '/shoppingList',
                    transition: TransitionType.native);
              },
              child: Text('go shopping list')),
          RaisedButton(
              onPressed: () {
                Application.router.navigateTo(context, '/login',
                    transition: TransitionType.native);
              },
              child: Text('login out')),
          Switch(
              activeColor: Colors.green,
              value: switchStaus,
              onChanged: (value) {
                setState(() {
                  switchStaus = value;
                });
              }),
        ],
      ),
    );
  }
}
