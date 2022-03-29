import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Authservices extends ChangeNotifier {
  bool _isloading = false;
  late String _errormsg;
  bool get isloading => _isloading;
  String get erromsg => _errormsg;
  FirebaseAuth firebaseauth = FirebaseAuth.instance;
  Future register(String email, String password) async {
    try {
      UserCredential authresult = await firebaseauth
          .createUserWithEmailAndPassword(email: email, password: password);
      User? user = authresult.user;
      setloading(false);
      return user;
    } on SocketException {
      setloading(false);
      setmsg('No Internet');
    } catch (e) {
      setloading(false);
      setmsg(e);
    }
    notifyListeners();
  }

  Future Logout() async {
    await firebaseauth.signOut();
  }

  void setloading(val) {
    _isloading = val;
    notifyListeners();
  }

  void setmsg(message) {
    _errormsg = message;
    notifyListeners();
  }

  Stream<User?> get user =>
      firebaseauth.authStateChanges().map((event) => event);
}
