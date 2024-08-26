import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('latihan column dan row')),
        body: Column(
          // widget column berfungsi untuk mengatur tata letak widget yang ada dalam column tersebut
          // column mengatur secara vertikal
          mainAxisAlignment: MainAxisAlignment.center, // kalau dipakai pada column tulisannya jadi center vertikal, kalau row center secara horizontal
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('teks 1'),
            Text('teks 2'),
            Text('teks 3'),
            Row(
              children: <Widget>[
                Text('teks 4'),
                Text('teks 5'),
                Text('teks 6'),
              ],
            )
          ],
        )
        ),
        
    );
  }
}
