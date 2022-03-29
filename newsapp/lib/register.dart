import 'dart:math';

import 'package:flutter/material.dart';
import 'package:newsapp/HomePage.dart';
import 'package:provider/provider.dart';
import 'package:flutter_login/flutter_login.dart';

import 'authentication/Auth_services.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late TextEditingController _email;
  late TextEditingController _password;
  final _formkey = GlobalKey<FormState>();

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    final loginprovider = Provider.of<Authservices>(context);
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  controller: _email,
                  validator: (val) =>
                      val!.isNotEmpty ? null : 'Plese Enter Aything',
                  decoration: InputDecoration(hintText: 'email'),
                ),
                TextFormField(
                  controller: _password,
                  validator: (value) =>
                      value!.length > 6 ? null : 'Plese enter 6 Characters',
                  decoration: InputDecoration(hintText: 'password'),
                ),
                MaterialButton(
                  onPressed: () async {
                    if (_formkey.currentState!.validate()) {
                      print('Email: ${_email.text}');
                      print('Email: ${_password.text}');
                      await loginprovider.register(
                          _email.text.trim(), _password.text.trim());
                      /*if (loginprovider.erromsg != null) {
                        print('Error');
                      } else*/
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    }
                  },
                  child: loginprovider.isloading
                      ? CircularProgressIndicator()
                      : Text("SignUp"),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
