import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
              hintText: "Number 1"
              ),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Number 2"),
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0),),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new RaisedButton(
                  child: new Text("Add"),
                  onPressed: (){} ,
                ),new RaisedButton(
                  child: new Text("Sub"),
                  onPressed: (){} ,
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new RaisedButton(
                  child: new Text("Mul"),
                  onPressed: (){} ,
                ),new RaisedButton(
                  child: new Text("Div"),
                  onPressed: (){} ,
                )
              ],
            )
          ],
        )
      ),
    );
  }
}
