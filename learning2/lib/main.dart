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
          centerTitle: true,
          backgroundColor: Colors.red,
          leading: IconButton(icon: Icon(Icons.menu_open), onPressed: () {}),
        ),
        body: Row(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                child: Text('1'),
                color: Colors.blue,
                padding: EdgeInsets.all(50),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                child: Text('2'),
                color: Colors.green,
                padding: EdgeInsets.all(50),
              ),
            ),
            Expanded(
              flex: 11,
              child: Container(
                child: Text('3'),
                color: Colors.red,
                padding: EdgeInsets.all(50),
              ),
            )
          ],
        ),
      ),
      /*body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('Hello Developer'),
            Container(
              child: ElevatedButton(
                  onPressed: () {}, child: Text('Click The Button')),
              color: Colors.pink,

              /*child: Text('Hello Developer'),
                padding: EdgeInsets.all(50),
                color: Colors.yellow,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),*/
            ),
            Container(
              child: Text(
                'Developer',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.deepPurple,
              padding: EdgeInsets.all(20),
            ),
          ],
        
      

      /*child:FlatButton.icon(
          onPressed: () {},
          icon: Icon(Icons.mail),
          label: Text('Mail Me'),
          color: Colors.green,
        )*/

      /*floatingActionButton: Container(
        child: FloatingActionButton(
          onPressed: () {},
          child: Text(
            'Click Here',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10,
            ),
          ),
          backgroundColor: Colors.green,
        ),*/
      ),*/
    );
  }
}
