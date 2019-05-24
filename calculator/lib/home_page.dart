import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1=0 ,num2=0 ,sum=0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doAddition(){
    this.setState((){
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1+num2;
    });
  }

  void doSubtraction(){
    this.setState((){
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1-num2;
    });
  }

  void doMulltiply(){
    this.setState((){
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1*num2;
    });
  }

  void doDivision(){
    this.setState((){
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum =num1~/num2;
    });
  }
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
              decoration: new InputDecoration(hintText: "Number 1",fillColor: Colors.deepOrange),
              controller: t1,
              cursorColor: Colors.greenAccent,
              style: TextStyle(color: Colors.deepOrange),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Number 2",fillColor: Colors.deepOrange ),
              controller: t2,
              cursorColor: Colors.greenAccent,
              style: TextStyle(color: Colors.deepOrange),
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0),),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("+",style: TextStyle(fontSize: 25.0),),
                  onPressed: doAddition ,
                  elevation: 10.0,
                  color:Colors.greenAccent,
                ),
                new MaterialButton(
                  child: new Text("-",style: TextStyle(fontSize: 30.0),),
                  onPressed: doSubtraction ,
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
                  onPressed: doMulltiply ,
                  elevation: 10.0,
                  color:Colors.greenAccent,
                ),
                new MaterialButton(
                  child: new Text("/",style: TextStyle(fontSize: 15.0),),
                  padding: EdgeInsets.all(10.0),
                  elevation: 10.0,
                  onPressed: doDivision,
                  color:Colors.greenAccent,
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                new Text(
                  "Output :$sum",
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
