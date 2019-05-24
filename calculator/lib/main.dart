import 'package:flutter/material.dart';
import 'home_page.dart';
void main(){
  runApp(new Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calculator",
      theme: new ThemeData(primarySwatch: Colors.red,accentColor: Colors.greenAccent,appBarTheme: AppBarTheme(color: Colors.greenAccent )),
      home: new HomePage(),
    );
  }
}
