import 'package:flutter/cupertino.dart';
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
    double largeur = MediaQuery.of(context).size.width;

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Salut les RIL 19"),
            Container(
              color: Colors.red,
              height: 75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(height: 60, width: 60,color: Colors.yellow,),
                  Container(height: 60, width: 60,color: Colors.blue,),
                  Container(height: 60, width: 60,color: Colors.indigo,),
                  Container(height: 60, width: 60,color: Colors.teal,),
                ],
              ),
            ),
            Container(color: Colors.yellow,height: 75,),
          ],
        )
      )
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
