import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "heal.",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _value1 = 0.0;
  double _value2 = 0.0;
  void onChanged1(value) {
    setState(() {
      _value1 = value;
    });
  }

  void onChanged2(value) {
    setState(() {
      _value2 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          //----WAVES-----
          new Image.asset("assets/images/ipl.png"),

          //---PADDING----
          new Padding(
            padding: EdgeInsets.all(25.0),
          ),

          //---HEAL TEXT---
          new Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.fromLTRB(50.0, 0.0, 0.0, 0.0),
            child: new Text(
              "heal.",
              style: new TextStyle(fontFamily: "Anke", fontSize: 64),
            ),
          ),

          //---PADDING--
          new Padding(
            padding: EdgeInsets.all(25.0),
          ),

          //SLIDER 1
          new Container(
            padding: EdgeInsets.all(25.0),
            child: new Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.fromLTRB(12.0, 0.0, 0.0, 0.0),
                    ),
                    new Align(
                      alignment: Alignment.centerLeft,
                      child: new Text("Time",
                          style: new TextStyle(
                            color: Color(0xFFEBEBEB),
                            fontFamily: 'Anke',
                            fontSize: 18,
                          )),
                    ),
                  ],
                ),
                new Slider(
                  inactiveColor: Color(0xFFEBEBEB),
                  activeColor: Color(0xFF00B7ED),
                  onChanged: onChanged1,
                  value: _value1,
                ),
              ],
            ),
          ),
          //END OF SLIDER 1

          //slider
          new Container(
            padding: EdgeInsets.all(25.0),
            child: new Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.fromLTRB(12.0, 0.0, 0.0, 0.0),
                    ),
                    new Align(
                      alignment: Alignment.centerLeft,
                      child: new Text("Intensity",
                          style: new TextStyle(
                            color: Color(0xFFEBEBEB),
                            fontFamily: 'Anke',
                            fontSize: 18,
                          )),
                    ),
                  ],
                ),
                new Slider(
                  inactiveColor: Color(0xFFEBEBEB),
                  activeColor: Color(0xFF00B7ED),
                  onChanged: onChanged2,
                  value: _value2,
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        isExtended: true,
        backgroundColor: Colors.white,
        onPressed: () {
          debugPrint("HEY!");
        },
        child: new Image.asset(
          "assets/images/forward.png",
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
