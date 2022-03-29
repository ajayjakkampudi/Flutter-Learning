import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Flutter'),
            ),
            body: ListView(children: [
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                width: 500,
                height: 1500,
                color: Colors.green,
                child: Text('This is line 1'),
              ),
              Container(
                width: 500,
                height: 1900,
                padding: EdgeInsets.symmetric(horizontal: 59, vertical: 100),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                color: Colors.red,
                child: Text('This is line 2'),
              ),
              Container(
                width: 500,
                color: Colors.yellow,
                child: Text(
                    'This is a large large large large large large large line'),
              ),
            ])
            /*body: Container(
          //color: Colors.blue,child: Text('Hello this is a trial'),)
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                width: 500,
                height: 500,
                color: Colors.green,
                child: Text('This is line 1'),
              ),
              Container(
                width: 500,
                height: 900,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                color: Colors.red,
                child: Text('This is line 2'),
              ),
              Container(
                width: 500,
                color: Colors.yellow,
                child: Text(
                    'This is a large large large large large large large line'),
              ),
              ElevatedButton(onPressed: () {}, child: Text('Button 1')),
              FloatingActionButton(
                  onPressed: () {}, child: Icon(Icons.add_a_photo))
            ],
          ),
        ),*/
            ));
  }
}
