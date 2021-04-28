import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Bonjour : ${_choixBtn}"),
        centerTitle: true,
        leading: IconButton(
          icon: (_likeBool) ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
          onPressed: () {
            _likeThis();
            _quelBouton("Icon Button");
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
                  Container(height: largeur / 9, width: largeur / 9,color: Colors.yellow,),
                  Container(height: largeur / 9, width: largeur / 9,color: Colors.blue,),
                  Container(height: largeur / 9, width: largeur / 9,color: Colors.indigo,),
                  Container(height: largeur / 9, width: largeur / 9,color: Colors.teal,),
                  Container(height: largeur / 9, width: largeur / 9,color: Colors.yellow,),
                  Container(height: largeur / 9, width: largeur / 9,color: Colors.blue,),
                  Container(height: largeur / 9, width: largeur / 9,color: Colors.indigo,),
                  Container(height: largeur / 9, width: largeur / 9,color: Colors.teal,),
                ],
              ),
            ),
            Container(
              color: Colors.yellow,
              height: 75,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Container(width:largeur / 9,color: Colors.black,),
                  ),
                  Container(width:largeur / 9, color: Colors.red,),
                  Expanded(
                    flex: 1,
                    child: Container(color: Colors.blue,),
                  ),
                  Expanded(
                    flex: 2,
                      child: Container(color: Colors.indigo,),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 5.0,
              color: Colors.white,
              child: Container(
                width: largeur / 4,
                height: largeur / 4,
                child: Image.asset("assets/img/forest.jpg", fit: BoxFit.cover,),
              ),
            ),
            Row(
              children: [
                Icon(FontAwesomeIcons.cat, color: Colors.red, size: 20,),
                Icon(FontAwesomeIcons.home, color: Colors.red, size: 20,),
                Icon(Icons.home, color: Colors.red, size: 20,),
                Icon(CupertinoIcons.home, color: Colors.red, size: 20,),
              ],
            ),
            /*
            Container(
              height: 300,
              width: 300,
              color: Colors.teal,
              child: Icon(Icons.directions_bike, color: Colors.white,),
              alignment: Alignment(0,0),
            )
             */
            ElevatedButton(
              onPressed: (){
                _quelBouton("Elevated Button");
              },
              child: Text("Elevated Button"),
              style: ButtonStyle(
                //backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                //elevation: MaterialStateProperty.all<double>(10.0),
              ),
            ),
            TextButton(
              child: Text("Text Button"),
              onPressed: (){
                _quelBouton("Text Button");
              },
            ),
            OutlinedButton(
              child: Text("Text Button"),
              onPressed: (){
                _quelBouton("Text Button");
              },
            ),
            InkWell(
              child:Container(
                width: largeur / 5,
                height: 30,
                color: Colors.orange,
                child: myText("Non cliquable", color: Colors.white, fontSize:20.0),
              ),
              onTap: (){
                _quelBouton("InkWell OnTap");
              },
            )
          ],
        )
      )
    );
  }


  Text myText(String data, {Color color, double fontSize}){
    return Text(data, style: TextStyle(color: color, fontSize: fontSize),);
  }



  String _choixBtn;
  void _quelBouton(String btn){
    setState(() {
      _choixBtn = btn;
    });
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
