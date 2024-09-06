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
          title: Text('Latihan Font'),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                'Contoh 01 (Tanpa apapun)',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                'Contoh 02 (Small Caps)',
                style: TextStyle(
                  fontSize: 20,
                  fontFeatures: [FontFeature.enable('smcp'),],
                ),
              ),
              Text(
                'Contoh 1/2 (Small Caps & Frac)',
                style: TextStyle(
                  fontSize: 20, fontFeatures: [
                    FontFeature.enable('smcp'), // huruf pertama besar dari huruf kedua ukurannya
                    FontFeature.enable('frac'), // huruf 1/2 dibuat dengan ukuran kecil, memenuhi layar

                    ],
                ),
              ),
              Text(
                'Contoh 3 1/2 (Small Caps & Frac)',
                style: TextStyle(
                  fontSize: 20, fontFeatures: [
                    FontFeature.enable('smcp'), // huruf pertama besar dari huruf kedua ukurannya
                    FontFeature.enable('frac'), // huruf 1/2 dibuat dengan ukuran kecil, memenuhi layar
                    ],
                ),
              ),
              Text(
                'Milonga 3 1/2 (Small Caps & Frac)',
                style: TextStyle(
                  fontSize: 20, 
                  fontFamily: 'Milonga',
                  fontFeatures: [
                    FontFeature.enable('smcp'), // huruf pertama besar dari huruf kedua ukurannya
                    FontFeature.enable('frac'), // huruf 1/2 dibuat dengan ukuran kecil, memenuhi layar
                    ],
                ),
              ),
              Text(
                'Contoh Cardo (tanpa apapun)',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                'Contoh Cardo 19 (Old Style)',
                style: TextStyle(
                  fontSize: 20,
                  fontFeatures: [
                    FontFeature.oldstyleFigures(),
                  ],
                ),
              ),
              Text(
                'Gabriola (Default)',
                style: TextStyle(
                  fontSize: 20, 
                  fontFamily: 'Gabriola'
                ),
              ),
              Text(
                'Gabriola (Style Set No.5)',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Gabriola',
                  fontFeatures: [
                    FontFeature.stylisticSet(5), // berhubungan dengan lengkung2 diujung huruf, 
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}