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
          title: Text('latihan stack dan align'),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                        ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black38,
                        ),),
                    ],
                  ),
                  ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black38,
                      ),
                     ),
                     Flexible(
                      flex: 1,
                      child: Container(
                      color: Colors.white,
                     ),
                     ),
                    ],
                  ),
                ),
              ],
            ),

            ListView(
              children: [
                Column(
                  children: [
                    Text(
                      'ini adalah teks yang berada dilapiran kedua',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Matemasie",
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      ),
                                 
                      SizedBox(height: 20,),

                    Text(
                      'ini adalah teks yang berada dilapiran kedua',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Matemasie",
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      ),

                      SizedBox(height: 20,),

                    Text(
                      'ini adalah teks yang berada dilapiran kedua',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Matemasie",
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      ),

                      SizedBox(height: 20,),

                    Text(
                      'ini adalah teks yang berada dilapiran kedua',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Matemasie",
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      ),

                      SizedBox(height: 20,),

                    Text(
                      'ini adalah teks yang berada dilapiran kedua',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Matemasie",
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),

                      SizedBox(height: 20,),
                    Text(
                      'ini adalah teks yang berada dilapiran kedua',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Matemasie",
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),

                      SizedBox(height: 20,),

                    Text(
                      'ini adalah teks yang berada dilapiran kedua',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Matemasie",
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      ),

                      SizedBox(height: 20,),

                    Text(
                      'ini adalah teks yang berada dilapiran kedua',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Matemasie",
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      ),
                  ],
                ),
              ],
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: null, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber[700],
                ),
                child: Text(
                  'button',
                  style: TextStyle(
                    color: Colors.black,
              
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}