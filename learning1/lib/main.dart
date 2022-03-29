import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _name = 'Ajay';
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: null,
            tooltip: 'Navigation Menu',
          ),
          title: Text('Flutter Example'),
        ),
        body: Container(
          child: Text(
            'Hello $_name',
          ),
          //color: Colors.black26,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green,
          ),
          margin: EdgeInsets.all(40),
          padding: EdgeInsets.all(100),
          //height: 400,
          //alignment: Alignment.center,
        ),
      ),
    );
  }
}
