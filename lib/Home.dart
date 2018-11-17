import 'package:flutter/material.dart';
import 'DataItem.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  
  DataItem dataItem=new DataItem();
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Bottom Sheet"),
        backgroundColor: Colors.deepOrange,
      ),
      
      floatingActionButton: new FloatingActionButton(
          onPressed: () => dataItem.mainBottom(context),
          child: new Icon(Icons.add),
          backgroundColor: Colors.deepPurpleAccent,
      ),
      
    );
  }
}
