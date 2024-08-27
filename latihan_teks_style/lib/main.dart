import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
        // fontFamily: 'Matemasie-Regular'
      // ),
      home: Scaffold(
        appBar: AppBar(title: Text('latihan teks style'),),
        body: Center(
          child: Text(
            'ini adalah teks',
            style: TextStyle(
              fontFamily: "Poppins",
              decoration: TextDecoration.overline,
              decorationColor: Colors.red[400],
              decorationThickness: 5,
              decorationStyle: TextDecorationStyle.wavy,
            ),),
        ),
      ),
    );
  }
}