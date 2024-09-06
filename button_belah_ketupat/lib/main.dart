import 'package:flutter/material.dart';

import 'colorful_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Colorful Button'),),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ColorfullButton(Colors.pink, Colors.blue, Icons.adb),
              ColorfullButton(Colors.yellow, Colors.green, Icons.adb),
              ColorfullButton(Colors.pink, Colors.black, Icons.adb),
              ColorfullButton(Colors.purple, Colors.blueGrey, Icons.adb),
            ],
          ),
        ),
      ),
    );
  }
}