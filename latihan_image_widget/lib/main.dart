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
          title: Text('latihan image'),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.amber,
            padding: EdgeInsets.all(20),
            child: Image.asset(
              'assets/gojo2.jpg',
              fit: BoxFit.cover,
              ),
            // child: Image(
            //   image: NetworkImage(
            //     'https://static.promediateknologi.id/crop/8x313:725x915/0x0/webp/photo/p2/74/2024/05/07/c8b7413ccd33544ab59691a09a7b4107-2471837881.jpg',),
            //     fit: BoxFit.cover, // menyesuaikan ukuran image yang tampil
            //     repeat: ImageRepeat.repeat, //menggandakan gambar sesuai space containernya
            //     ),
          ),
        ),
      ),
    );
  }
}