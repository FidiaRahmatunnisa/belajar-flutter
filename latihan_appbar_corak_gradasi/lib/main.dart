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
          elevation: 0,
          leading: Icon(Icons.adb, color: Colors.black,),
          title: Text(
            'AppBar example', 
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
            ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.settings, color: Colors.black,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.exit_to_app, color: Colors.black,)),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff0095ff),
                  Color(0xff6610f2),
                ],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomLeft
              ),
              image: DecorationImage(
                image: AssetImage('assets/corak2.jpg',),
                fit: BoxFit.cover,
                repeat: ImageRepeat.repeat
              ),
            ),
          ),
        ),
      ),
    );
  }
}
