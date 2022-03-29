import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var level = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter'),
          centerTitle: true,
          backgroundColor: Colors.grey[700],
        ),
        backgroundColor: Colors.grey[900],
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/Screenshot (160).png'),
                  radius: 50,
                ),
              ),
              Container(
                child: Text(
                  'Name',
                  style: TextStyle(
                    color: Colors.grey[400],
                    letterSpacing: 2,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text(
                  'xxx',
                  style: TextStyle(
                    color: Colors.amber[400],
                    letterSpacing: 2,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text(
                  'Level',
                  style: TextStyle(
                    color: Colors.grey[400],
                    letterSpacing: 2,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text(
                  '$level',
                  style: TextStyle(
                    color: Colors.amber[400],
                    letterSpacing: 2,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Icon(
                    Icons.mail,
                    color: Colors.grey[400],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'xxx@gmail.com',
                    style: TextStyle(
                      color: Colors.amber[400],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(children: [
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            level += 3;
                          });
                        },
                        child: Text(
                          '+',
                          textAlign: TextAlign.center,
                        ))),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            level -= 1;
                          });
                        },
                        child: Text(
                          '-',
                          textAlign: TextAlign.center,
                        )))
              ])
            ],
          ),
        ),
      ),
    );
  }
}
