import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text("heal.",style: new TextStyle(color: Colors.black,fontSize: 42,fontWeight: FontWeight.bold),)

        ],
      ),
    );
  }
}
