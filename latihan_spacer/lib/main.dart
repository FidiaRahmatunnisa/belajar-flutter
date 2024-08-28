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
        appBar: AppBar(
          title: Text('Latihan Spacer'),
        ),
        body: Center(
          child: Row(
            children: [
              Spacer(flex: 1,),
              Container(
                width: 50,
                height: 50,
                color: Colors.blue,
              ),
              Spacer(flex: 2,),
              Container(
                width: 50,
                height: 50,
                color: Colors.amber,
              ),
              Spacer(flex: 3,),
              Container(
                width: 50,
                height: 50,
                color: Colors.red[400],
              ),
              Spacer(flex: 2,),
            ],
          ),
        ),
      ),
    );
  }
}