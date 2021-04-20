import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'yaziSayfa.dart';

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  Widget _printPadding() {
    return Padding(padding: EdgeInsets.only(top: 20.0));
  }

  Widget _printImage(getImage) {
    return Container(
      child: Image.asset(
        getImage,
        width: 400.0,
        height: 200.0,
      ),
    );
  }

  Widget _printTitle(getID, getTitle) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, new MaterialPageRoute(builder: (context) => YaziSayfa(getID)));
      },
      child: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
          child: Text(getTitle,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff885566),
        title: Text("Charming Blog"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _printPadding(),
            _printImage('assets/1.jpg'),
            _printTitle(1, 'Deep learning networks prefer the human voice'),
            _printPadding(),
            _printImage('assets/2.jpg'),
            _printTitle(2, 'Şu dünyada fil yalnızdır')
          ],
        ),
      ),
    );
  }
}
