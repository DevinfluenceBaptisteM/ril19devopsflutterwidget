import 'package:flutter/material.dart';
import 'package:flutter_widget/myhomepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Flutter Cesi'),
      debugShowCheckedModeBanner: false,
    );
  }
}
