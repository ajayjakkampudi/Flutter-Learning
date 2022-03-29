import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

launchURLBrowser() async {
  const url = 'https://classroom.google.com/u/0/c/MzM0MDc2MjE5OTIz';
  if (await canLaunch(url)) {
    await launch(url, forceSafariVC: true, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}

launchURLApp() async {
  const url = 'https://classroom.google.com/u/0/c/MzM0MDc2MjE5OTIz';
  if (await canLaunch(url)) {
    await launch(url, forceSafariVC: true, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Geeks for Geeks'),
            backgroundColor: Colors.green,
          ),
          body: Row(
            children: [
              Expanded(
                  child: RaisedButton(
                onPressed: launchURLBrowser,
                child: Text('Open in Browser'),
              )),
              Expanded(
                  child: RaisedButton(
                onPressed: launchURLApp,
                child: Text('Open in App'),
              ))
            ],
          )),
    );
  }
}
