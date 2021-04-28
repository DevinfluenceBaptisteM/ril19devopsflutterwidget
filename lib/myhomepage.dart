import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _likeBool = false;
  int _indexSelect = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(66, 165, 245, 1.0),
      appBar: AppBar(
        title: Text("Bonjour"),
        centerTitle: true,
        leading: IconButton(
          icon: (_likeBool) ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
          onPressed: () {
            _likeThis();
            print(_likeBool);
          },
        ),
        actions: [
          Icon(Icons.access_alarm),
          Icon(Icons.golf_course),
          Icon(Icons.directions_bike),
        ],
        elevation: 10.0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Accueil"),
          BottomNavigationBarItem(icon: Icon(Icons.assessment_outlined),label: "Statistiques"),
        ],
        onTap: (int index){
          _itemClique(index);
        },
        currentIndex: _indexSelect,
      ),
    );
  }

  void _itemClique(int index){
    setState(() {
      _indexSelect = index;
    });
  }

  void _likeThis(){
    setState(() {
      _likeBool = !_likeBool;
    });

  }



}
