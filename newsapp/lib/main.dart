/*import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  // ignore: override_on_non_overriding_member

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(),
          body: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('er')
                .orderBy('time', descending: true)
                .snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              //return Text(snapshot.data!.docs[0]['name']);

              return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Text(snapshot.data!.docs[index]['name']),
                        Text(snapshot.data!.docs[index]['surname']),
                      ],
                    );
                  });
            },
          )),
    );
  }
}

// ignore: camel_case_types
/*class firestore extends StatelessWidget {
  const firestore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: FirebaseFirestore.instance.collection('er').get(),
      builder: (context, AsyncSnapshot snapshot) {
        return Text(snapshot.data.docs.id);
      },
    );
  }
}*/

// ignore: camel_case_types
/*class firestore extends StatelessWidget {
  // ignore: non_constant_identifier_names
  late final String Id;
  firestore(this.Id);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FirebaseFirestore.instance.collection('er').doc(Id).get(),
      builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        Map<String, dynamic> data =
            snapshot.data!.data() as Map<String, dynamic>;
        return Text(data['name']);
      },
    );
  }
}*/*/

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:newsapp/authentication/Auth_services.dart';
import 'package:provider/provider.dart';
import 'package:splashscreen/splashscreen.dart';
import 'authentication/Login.dart';

void main() {
  runApp(MaterialApp(home: SplashScreen()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _init = Firebase.initializeApp();
    return Scaffold(
      body: FutureBuilder(
        future: _init,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Error();
          }
          if (snapshot.hasData) {
            return MultiProvider(
              providers: [
                ChangeNotifierProvider<Authservices>.value(
                    value: Authservices()),
                StreamProvider.value(
                    value: Authservices().user, initialData: null)
              ],
              child: MaterialApp(
                home: Login(),
              ),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class Error extends StatelessWidget {
  const Error({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Error');
  }
}
