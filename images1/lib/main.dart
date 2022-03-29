import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'NETWORK IMAGES',
          ),
          elevation: 500.00,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
            tooltip: 'Menu',
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.comment),
              tooltip: 'Comment Icon',
              onPressed: () {},
            ), //IconButton
            IconButton(
              icon: Icon(Icons.settings),
              tooltip: 'Setting Icon',
              onPressed: () {},
            ),
          ],
          titleSpacing: 2.0,
          centerTitle: true,
          backgroundColor: Colors.grey[800],
          toolbarHeight: 50,
          foregroundColor: Colors.red,
          //shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(300)),
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image(
              image: NetworkImage(
                  "https://images.hdqwalls.com/download/iron-man-artwork-new-y2-2160x3840.jpg"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image(
                image: NetworkImage(
                    "https://images.pexels.com/photos/3951373/pexels-photo-3951373.jpeg?cs=srgb&dl=pexels-cottonbro-3951373.jpg&fm=jpg")),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image(
                image: NetworkImage(
                    "https://images.pexels.com/photos/1474993/pexels-photo-1474993.jpeg?cs=srgb&dl=pexels-movidagrafica-barcelona-1474993.jpg&fm=jpg")),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/images/groot.jpg'),
          )
        ]),
      ),
    );
  }
}

// setup a stateful widget
