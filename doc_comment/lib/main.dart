import 'package:doc_comment/user_profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final UserProfile user = UserProfile(
    'jayon',
    'hacker'
  );

  @override
  Widget build(BuildContext context) {
    user.name = 'fidia';
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Doc Comment'),
        ),
        body: Center(
          child: UserProfile(),
        ),
      ),
    );
  }
}
