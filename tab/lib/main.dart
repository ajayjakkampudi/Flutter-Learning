import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

int x = 3;

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              Icon(
                Icons.search,
              ),
              Padding(padding: EdgeInsets.all(8))
            ],
            title: Text('Flutter'),
            /*bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.music_note),
                ),
                Tab(
                  icon: Icon(Icons.video_collection_sharp),
                )
              ],
            ),
          ),
          ]*/
          ),
          bottomNavigationBar: BottomNavigationBar(items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.share), label: 'Share'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ]), /*TabBarView(children: [
            ListView(
              children: [
                Text('kl'),
                Text('lkiop'),
                Image.network(
                    "https://i.pinimg.com/474x/69/aa/6f/69aa6f9228ea54e088989762062a66f1.jpg"),
              ],
            ),
            Image.network(
                "https://i.pinimg.com/474x/a6/f3/b0/a6f3b00e996266bc97eed1f32c175235.jpg")
          ]),*/
        ),
      ),
    );
  }
}
