import 'package:flutter/material.dart';

void main(){
  runApp(new Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calculator App",
      theme: new ThemeData(
        primarySwatch: Colors.blue
      ),
      home: new HomePage(),
    );
  }
}
