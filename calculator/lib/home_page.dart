import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      new Theme(data: null, child: null)
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
              decoration: new InputDecoration(hintText: "Number 1"),
              cursorColor: Colors.greenAccent,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Number 2",fillColor: Colors.deepOrange ),
              cursorColor: Colors.greenAccent,
              style: TextStyle(color: Colors.deepOrange),
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0),),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new RaisedButton(
                  child: new Text("Add"),
                  onPressed: (){} ,
                  elevation: 10.0,
                ),new RaisedButton(
                  child: new Text("Sub"),
                  onPressed: (){} ,
                  elevation: 10.0,
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new RaisedButton(
                  child: new Text("Mul"),
                  onPressed: (){} ,
                  elevation: 10.0,

                ),
                new RaisedButton(
                  child: new Text("Div",),
                  padding: EdgeInsets.all(10.0),
                  elevation: 10.0,
                  textColor: Colors.deepOrange,
                  onPressed: (){} ,
                  color:Colors.black ,
                )
              ],
            )
          ],
        )
      ),
    );
  }
}
