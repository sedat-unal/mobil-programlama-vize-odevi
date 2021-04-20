import 'package:flutter/material.dart';
import 'main.dart';
import 'anasayfa.dart';

class YaziSayfa extends StatelessWidget {
  int id;

  YaziSayfa([this.id]);

  Widget _getImportantSentence(id) {
    if (id == 1) {
      return Container(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
        child: Text(
            'The digital revolution is built on a foundation of invisible 1s and 0s called bits. As decades pass, and more and more of the worlds information and knowledge morph into streams of 1s and 0s, the notion that computers prefer to speak in binary numbers is rarely questioned. According to new research from Columbia Engineering, this could be about to change.',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      );
    } else if (id == 2) {
      return Container(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
        child: Text('selam',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      );
    }
  }

  Widget _getFullArticle(id) {
    if (id == 1) {
      return Container(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
        child: Text(
            'A new study from Mechanical Engineering Professor Hod Lipson and his PhD student Boyuan Chen proves that artificial intelligence systems might actually reach higher levels of performance if they are programmed with sound files of human language rather than with numerical data labels. The researchers discovered that in a side-by-side comparison, a neural network whose training labels consisted of sound files reached higher levels of performance in identifying objects in images, compared to another network that had been programmed in a more traditional manner, using simple binary inputs.',
            style: TextStyle(fontSize: 16)),
      );
    } else if (id == 2) {
      return Container(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
        child: Text('aleyküm selam', style: TextStyle(fontSize: 16)),
      );
    }
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
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Container(
              child: Image.asset(
                'assets/${this.id}.jpg',
                width: 400.0,
                height: 200.0,
              ),
            ),
            _getImportantSentence(this.id),
            _getFullArticle(this.id)
          ],
        ),
      ),
    );
  }
}
