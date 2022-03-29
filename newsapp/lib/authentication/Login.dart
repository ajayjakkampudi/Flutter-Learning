import 'package:flutter/material.dart';
import 'package:newsapp/authentication/Auth_services.dart';
import 'package:newsapp/register.dart';
import 'package:provider/provider.dart';
import 'package:flutter_login/flutter_login.dart';

class Login extends StatefulWidget {
  //Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
    return SafeArea(
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
                  //await loginprovider.;
                }
              },
              child: loginprovider.isloading
                  ? CircularProgressIndicator()
                  : Text("Login"),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register()));
                },
                child: Text('Sign Up'))
          ],
        ),
      ),
    ));
  }
}
