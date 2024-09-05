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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: QrImageView(
            data: 'https://static.promediateknologi.id/crop/8x313:725x915/0x0/webp/photo/p2/74/2024/05/07/c8b7413ccd33544ab59691a09a7b4107-2471837881.jpg',
            version: QrVersions.auto,
            size: 250,
            gapless: false,
            backgroundColor: Colors.black,
            foregroundColor: Colors.amber,
            errorCorrectionLevel: QrErrorCorrectLevel.M,
          )
        ),
      ),
    );
  }
}
