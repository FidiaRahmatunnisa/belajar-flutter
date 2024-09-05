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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: AppBar(
            backgroundColor: Colors.amber,
            flexibleSpace: Stack(
              children: [
                Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Latihan Custom Height AppBar', 
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                ),
              ),
             ],
            ),
          ),
        ),
      ),
    );
  }
}