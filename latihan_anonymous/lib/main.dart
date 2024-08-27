import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = 'ini adalah teks';

  void tombolDitekan() {
    setState(() { // function setState digunakan untuk merefresh halaman
      message = 'tombo sudah ditekan';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('Anonymous Method'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    message,
                  ),
                  ElevatedButton(
                    onPressed: tombolDitekan,
                    child: Text('tekan saya'),
                  ),
                ],
              ),
            )));
  }
}
