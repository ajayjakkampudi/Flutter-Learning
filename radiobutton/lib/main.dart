import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List l = ["Small", "Medium", "Large"];
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            for (int i = 0; i < l.length; i++)
              ListTile(
                title: Text(l[i]),
                leading: Radio(
                    value: i,
                    groupValue: _value,
                    onChanged: i > 2
                        ? null
                        : (value) {
                            setState(() {
                              _value = i;
                            });
                          }),
              )
          ],
        ),
      ),
    );
  }
}
