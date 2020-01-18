import 'package:bozza/widget1.dart';
import 'package:bozza/widget2.dart';
import 'package:bozza/widget3.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int page;
  PageController _pageController;
  @override
  void initState() {
    super.initState();
    page = 0; //pagina iniziale
    _pageController = PageController(initialPage: page);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              DrawerHeader(),
              RaisedButton(
                child: Text('Widget1'),
                onPressed: () => _pageController.jumpToPage(0),
              ),
              RaisedButton(
                child: Text('Widget2'),
                onPressed: () => _pageController.jumpToPage(1),
              ),
              RaisedButton(
                child: Text('Widget3'),
                onPressed: () => _pageController.jumpToPage(2),
              )
            ],
          ),
        ),
        body: PageView(
          controller: _pageController,
          children: <Widget>[
            //lista delle pagine che vuoi visualizzare
            Widget1(),
            Widget2(),
            Widget3(),
          ],
        ),
        appBar: AppBar(
          title: Text('Bozza'),
        ),
      ),
    );
  }
}
