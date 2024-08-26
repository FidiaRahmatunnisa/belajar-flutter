import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('latihan container'),),
        body: Container(
          color: Colors.amber,
          margin: EdgeInsets.all(30),
          // padding: EdgeInsets.all(20),
          child: Container(
            // color: Colors.blue[300],
            // padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            decoration: BoxDecoration(
              // color: Colors.blue[300],
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Colors.black,
                  Colors.blue
                ]
                )
            ),
          ),
        ),
      ),
    );
  }
}

