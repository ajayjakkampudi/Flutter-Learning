import 'dart:convert';
import 'dart:async' show Future;
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

var random = new Random();

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List data = [];

  Future<void> loadJsonData() async {
    var jsonText = await rootBundle.loadString('assets/trial.json');
    setState(() => data = json.decode(jsonText));
  }

  @override
  void initState() {
    super.initState();
    this.loadJsonData();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
            body: Column(
              children: [
                ElevatedButton(onPressed: loadJsonData, child: Text('Hello')),
                Text(data[random.nextInt(data.length - 1)]["email"])
                /*data.length > 0
                    ? Expanded(
                        child: ListView.builder(
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            return Card(
                              margin: EdgeInsets.all(10),
                              child: ListTile(
                                title: Text(data[index]["name"]),
                                subtitle: Text(data[index]["email"]),
                              ),
                            );
                          },
                        ),
                      )
                    : Container()*/
              ],
            ))
        /*ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                var name = data[index]["name"];
                var email = data[index]['email'];

                return new Column(
                  children: <Widget>[
                    new ListTile(
                      leading: CircleAvatar(
                        child: new Icon(Icons.account_box),
                      ),
                      title: Text(name),
                      subtitle: Text(email),
                    ),
                    new Divider(),
                  ],
                );
              })*/
        );
  }
}
