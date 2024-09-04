import 'package:flutter/material.dart';
import 'package:materi_custom_card/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MainPage(),
        debugShowCheckedModeBanner: false,
    );
  }
}
