import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String text = 'Latihan QR Scan';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Scan'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(text),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  text = (await scanner.scan())!;
                  setState(() {
                  });
                },
                child: Text('Scan')),
          ],
        ),
      ),
    );
  }
}
