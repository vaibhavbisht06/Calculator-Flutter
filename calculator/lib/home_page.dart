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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("+",style: TextStyle(fontSize: 25.0),),
                  onPressed: (){} ,
                  elevation: 10.0,
                  color:Colors.greenAccent,
                ),
                new MaterialButton(
                  child: new Text("-",style: TextStyle(fontSize: 30.0),),
                  onPressed: (){} ,
                  elevation: 10.0,
                  color:Colors.greenAccent,
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("*",style: TextStyle(fontSize: 25.0),),
                  onPressed: (){} ,
                  elevation: 10.0,
                  color:Colors.greenAccent,
                ),
                new MaterialButton(
                  child: new Text("/",style: TextStyle(fontSize: 15.0),),
                  padding: EdgeInsets.all(10.0),
                  elevation: 10.0,
                  onPressed: (){} ,
                  color:Colors.greenAccent,
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                new Text(
                  "Output :",
                  style: new TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple
                  ),
                )
              ],
            )
          ],
        )
      ),
    );
  }
}
