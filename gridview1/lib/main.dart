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
        body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 10,
          shrinkWrap: true,
          childAspectRatio: 1,
          padding: EdgeInsets.all(8),
          children: [
            InkWell(
              onTap: () {
                print(45);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MaterialApp(
                          home: Scaffold(),
                        )));
              },
              child: GridTile(
                footer: Material(
                  color: Colors.transparent,
                  child: GridTileBar(
                    title: Text('First'),
                    backgroundColor: Colors.black45,
                  ),
                ),
                child: Material(
                  child: Image.network(
                    'https://i.kinja-img.com/gawker-media/image/upload/c_fit,f_auto,g_center,pg_1,q_60,w_1165/0ba728b31f90234b171a27cf058dc05a.jpg',
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
            ),
            GridTile(
              header: Material(
                  color: Colors.transparent,
                  child: Container(
                    child: GridTileBar(
                      title: Text('Second'),
                      backgroundColor: Colors.black45,
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(10))),
                  )),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://pocket-image-cache.com/direct?resize=w2000&url=https%3A%2F%2Fi2.wp.com%2Fthegrowtheq.com%2Fwp-content%2Fuploads%2F2019%2F12%2Fsky-earth-space-working.jpg%3Fssl%3D1'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
              ),
            ),
            GridTile(
              header: Material(
                color: Colors.transparent,
                child: GridTileBar(
                  title: Text('First'),
                  backgroundColor: Colors.black45,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40))),
              ),
              child: Material(
                child: Image.network(
                  'https://i.kinja-img.com/gawker-media/image/upload/c_fit,f_auto,g_center,pg_1,q_60,w_1165/0ba728b31f90234b171a27cf058dc05a.jpg',
                  fit: BoxFit.cover,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class weer extends StatelessWidget {
  const weer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      home: Scaffold(),
    );
  }
}
