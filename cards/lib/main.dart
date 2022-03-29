import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cards'),
          centerTitle: true,
        ),
        body: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            children: [
              ListTile(
                title: Text('Card-1'),
                leading: Icon(Icons.arrow_drop_down_circle_outlined),
                subtitle: Text(
                  'Secondary Text',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              Image.network(
                  'https://img-getpocket.cdn.mozilla.net/404x202/filters:format(jpeg):quality(60):no_upscale():strip_exif()/https%3A%2F%2Fpocket-image-cache.com%2F1200x%2Ffilters%3Ano_upscale()%3Aformat(jpg)%3Aextract_cover()%2Fhttps%253A%252F%252Fcdn.theatlantic.com%252Fassets%252Fmedia%252Fimg%252Fmt%252F2017%252F10%252FAP_051228012582%252Flead_720_405.jpg%253Fmod%253D1533691910'),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Action-1'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Action-2'),
                  ),
                  Padding(padding: EdgeInsets.only(right: 65)),
                  IconButton(
                      onPressed: null, icon: Icon(Icons.favorite_border)),
                  IconButton(onPressed: null, icon: Icon(Icons.share))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
