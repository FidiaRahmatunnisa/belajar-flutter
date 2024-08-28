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
  // TextEditingController controller = TextEditingController(text: 'nilai awal');
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Text Field'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                // obscureText: true, // saat mengetik jadi titik-titik -> secure
                // maxLength: 5, // maksimal karakter yang dapat diketik
                // maxLines: 5, // maksimal baris yang dapat dilihat
                decoration: InputDecoration(
                  fillColor: Colors.blue[100],
                  filled: true,
                  // suffix: Container(), // perlakuannya sama dengan prefix
                  prefix: Container( // kalau mau memakai widget prefix, maka prefixIcon, prefixText dan lainnya harus dihapus dulu                    width: 5,
                    height: 5,
                    width: 5,
                    color: Colors.amber,
                    ),
                  icon: Icon(Icons.adb), // icon-nya akan berada pada luar box-border teks input
                  // prefixIcon: Icon(Icons.person),  // icon-nya akan berada dalam box-border teks input
                  // prefixText: 'Name', // teks ini berada dalam box-border
                  // prefixStyle: TextStyle(
                  //   color: Colors.blue,
                  //   fontWeight: FontWeight.bold,
                  //   ),
                  labelText: 'Nama Lengkap',
                  hintText: 'Tuliskan Nama Lengkapmu',
                  hintStyle: TextStyle(
                    fontSize: 12,
                  ),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)), // membuat box teks input, ada warna di pinggirnya
                  // border: InputBorder.none // menghilangkan border_line dari teks input
                ),
                onChanged: (value){
                  setState(() {                                       
                  });
                },
                controller: controller,
              ),
            ),
            Text(controller.text),
          ],
        ),
      ),
    );
  }
}
