/*import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  CollectionReference users = FirebaseFirestore.instance.collection('comments');
  late String textNote;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            TextField(
              onChanged: (value) {
                textNote = value;
              },
              decoration: InputDecoration(
                hintText: 'Text',
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  await users.add({'user': 'Ajay', 'comments': textNote}).then(
                      (value) => print('Send'));
                },
                child: Text('Submit'))
          ],
        ),
      ),
    );
  }
}*/

/*
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  return runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  // ignore: override_on_non_overriding_member
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(),
          body: StreamBuilder(
            stream: FirebaseFirestore.instance.collection('er').snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              //return Text(snapshot.data!.docs[0]['name']);

              return ListView.builder(
                  
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return Text(snapshot.data!.docs[index]['name']);
                  });
            },
          )),
    );
  }
}
*/

/*class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('News'),
            ),
            body: StreamBuilder(
                stream: FirebaseFirestore.instance.collection('er').snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (!snapshot.hasData) {
                    return Text('Loading');
                  }
                  return new ListView(
                    children: snapshot.data!.docs.map((document) {
                      return new ListTile(
                        title: new Text(document['name'][1]),
                        subtitle: Text(document['surname'][1]),
                      );
                    }).toList(),
                  );
                })));
  }
}*/
