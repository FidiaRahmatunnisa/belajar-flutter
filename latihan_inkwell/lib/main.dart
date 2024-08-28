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
          title: Text(
            "Latihan InkWell"
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: (){}, 
                child: Text('Default Button'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),
                ),
              Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.purple,
                      Colors.pink,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
               child: Material(                
                elevation: 5,  
                borderRadius: BorderRadius.circular(20),
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.amber[400],
                  borderRadius: BorderRadius.circular(20),
                  onTap: (){},
                  child: Center(
                    child: Text(
                      'Custom Button',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
               ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}