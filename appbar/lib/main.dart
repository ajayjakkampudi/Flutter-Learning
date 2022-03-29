import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          'APPBAR',
          style: TextStyle(letterSpacing: 3),
        ),
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        actions: [IconButton(onPressed: null, icon: Icon(Icons.place))],
        titleSpacing: 0.5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.red,
        elevation: 560,
        toolbarHeight: 100,
        leadingWidth: 560,
        brightness: Brightness.light,
      ),
    ));
  }
}
