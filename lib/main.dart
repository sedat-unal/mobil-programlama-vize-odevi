import 'package:flutter/material.dart';
import 'anasayfa.dart';
import 'yaziSayfa.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome To',
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: "Billabong",
                )),
            Text(
              'Charming',
              style: TextStyle(
                  fontSize: 70.0, fontFamily: "Billabong", color: Colors.black),
            ),
            GestureDetector(
                child: ElevatedButton(
              child: Text('Go to do read'),
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(builder: (context) => Anasayfa()));
              },
            ))
          ],
        ),
      ),
    );
  }
}
