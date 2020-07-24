import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

//v3
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String greetings = "Hi There";
  List backgroundColors = [
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.deepPurple,
    Colors.black12
  ];
  Color color = Colors.cyanAccent;
  Random generateRandomColor = new Random();
  int colorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("My App Title"),
      ),
      backgroundColor: color,
      body: Container(
        alignment: Alignment.center,
        child: GestureDetector(
          child: Container(
            child: Text("Hi There!",
                textAlign: TextAlign.center, style: TextStyle(fontSize: 42)),
//            alignment: Alignment.center,
            width: double.infinity,
            height: double.infinity,
          ),
          onTap: () {
            setState(() {
              colorIndex = generateRandomColor.nextInt(backgroundColors.length-1);
              color = backgroundColors[colorIndex];
            });
          },
        ),

      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}
