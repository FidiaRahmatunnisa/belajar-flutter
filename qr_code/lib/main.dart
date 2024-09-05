import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: QrImageView(
            data: 'This is a simple QR code',
            version: QrVersions.auto,
            size: 320,
            gapless: false,
          )
        ),
      ),
    );
  }
}
