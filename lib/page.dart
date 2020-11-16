import 'package:flutter/material.dart';

class PageViewTest1 extends StatefulWidget {
  PageViewTest1({Key key}) : super(key: key);

  @override
  _PageViewTest1State createState() => _PageViewTest1State();
}

class _PageViewTest1State extends State<PageViewTest1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('PageView'),
          centerTitle: true,
          elevation: 0,
        ),
        body: PageView(
          children: <Widget>[
            Container(
              color: Colors.orange,
              child: Center(
                  child: Text(
                'Page 1',
                style: TextStyle(color: Colors.white),
              )),
            ),
            Container(
              color: Colors.blue,
              child: Center(
                  child: Text(
                'Page 2',
                style: TextStyle(color: Colors.white),
              )),
            ),
            Container(
              color: Colors.green,
              child: Center(
                  child: Text(
                'Page 3',
                style: TextStyle(color: Colors.white),
              )),
            ),
          ],
        ));
  }
}
