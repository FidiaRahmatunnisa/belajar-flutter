import 'package:flutter/material.dart';

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
        backgroundColor: Colors.amber[600],
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: [
              buildCard(Icons.account_box, 'Akun Box'),
              buildCard(Icons.adb, 'Serangga Android'),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
              elevation: 5,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),                
                    child: Icon(iconData)
                  ),
                  Text(text),
                ],
              ),
            );
  }
}