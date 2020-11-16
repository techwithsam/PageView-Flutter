import 'package:flutter/material.dart';

class CustomizedPageView extends StatefulWidget {
  CustomizedPageView({Key key}) : super(key: key);

  @override
  _CustomizedPageViewState createState() => _CustomizedPageViewState();
}

class _CustomizedPageViewState extends State<CustomizedPageView> {
  String bal = '0';
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    final panels = PageView(
      onPageChanged: (int page) {
        setState(() {
          currentPage = page;
        });
      },
      controller: PageController(initialPage: 0),
      children: <Widget>[
        Panel1(),
        Panel2(),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Customized View'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        child: Stack(children: <Widget>[
          panels,
          Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      for (int i = 0; i < 2; i++)
                        (i == currentPage ? circleBar(true) : circleBar(false))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  Widget circleBar(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: isActive ? 12 : 8,
      width: isActive ? 12 : 8,
      decoration: BoxDecoration(
          color: isActive ? Colors.blue[700] : Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }
}

class Panel1 extends StatefulWidget {
  Panel1({Key key}) : super(key: key);

  @override
  _Panel1State createState() => _Panel1State();
}

class _Panel1State extends State<Panel1> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        height: 400,
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey[200]),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey[500].withOpacity(1.0),
              offset: Offset(1.1, 1.1),
              blurRadius: 10.0,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text('PageView 1',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
        ),
      ),
    );
  }
}

class Panel2 extends StatefulWidget {
  Panel2({Key key}) : super(key: key);

  @override
  _Panel2State createState() => _Panel2State();
}

class _Panel2State extends State<Panel2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        height: 400,
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey[200]),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey[500].withOpacity(1.0),
              offset: Offset(1.1, 1.1),
              blurRadius: 10.0,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text('PageView 2',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
        ),
      ),
    );
  }
}
