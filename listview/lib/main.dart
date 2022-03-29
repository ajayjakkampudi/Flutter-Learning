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
          automaticallyImplyLeading: false,
          title: Text("ListView"),
          centerTitle: true,
        ),
        body: Scrollbar(
          child: ListView(
            restorationId: 'list_demo_list_view',
            children: [
              for (int index = 1; index < 21; index++)
                ListTile(
                  leading: ExcludeSemantics(
                    child: CircleAvatar(child: Text('$index')),
                  ),
                  tileColor: Colors.green,
                  title: Text('List $index'),
                  subtitle: Text('Subtitle $index'),
                ),
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 5))
            ],
          ),
        ),
      ),
    );
  }
}
