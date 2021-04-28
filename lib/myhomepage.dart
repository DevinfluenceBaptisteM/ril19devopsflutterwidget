import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(66, 165, 245, 1.0),
      appBar: AppBar(
        title: Text("Bonjour"),
        centerTitle: true,
        leading: Icon(Icons.favorite),
        actions: [
          Icon(Icons.access_alarm),
          Icon(Icons.golf_course),
          Icon(Icons.directions_bike),
        ],
        elevation: 10.0,
      ),
    );
  }
}
