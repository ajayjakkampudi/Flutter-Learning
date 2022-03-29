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
          title: Text('Wrap'),
        ),
        body: Wrap(
          spacing: 20, //space btw the chips
          runSpacing: 30, //space btw the lines
          //crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          //direction: Axis.vertical,
          children: <Widget>[
            Chip(
              backgroundColor: Colors.green,
              avatar: Icon(Icons.wash_rounded),
              label: const Text('Hamilton'),
            ),
            Chip(
              avatar: Icon(Icons.wash_rounded),
              label: const Text('Lafayette'),
            ),
            Chip(
              avatar: Icon(Icons.wash_rounded),
              label: const Text('Mulligan'),
            ),
            Chip(
              avatar: Icon(Icons.wash_rounded),
              label: const Text('Laurens'),
            ),
          ],
        ),
      ),
    );
  }
}
