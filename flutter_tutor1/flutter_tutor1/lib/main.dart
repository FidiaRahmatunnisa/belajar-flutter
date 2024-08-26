import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title:Text("aplikasi hello world", style: TextStyle(color: Colors.amber),),),
        body: Center(
          child: Container(
            color: Colors.yellow,
            width: 150,
            height: 30,
            child: Text('Hello World ',
            //maxLines: 2, // maximum teks yang bisa ditulis hanya 2 baris, sesuai value yang diinputkan
            // overflow: TextOverflow.ellipsis, // hasilnya : jika teks yang tampil melebihi maximum line, maka akan ditampilakan titik-titik
            overflow: TextOverflow.clip, // hasilnya : benar-benar dipotong
            // softWrap: false,  // kalau false hasilnya dipaksa satu baris dan benar-benar terpotong ujungnya misal dikata hello jadi hell(mentok ujung container)
            textAlign: TextAlign.center,  // bagaimana box teks tampil, apakah rata kanan, rata kiri, center dll..

            style: TextStyle(
              fontSize: 16,
              fontWeight:FontWeight.bold,
              fontStyle: FontStyle.italic
            ),),
          ),
        ),
      ),
    );
  }
}
