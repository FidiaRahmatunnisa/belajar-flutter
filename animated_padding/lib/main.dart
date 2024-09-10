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
  double myPadding = 5;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Animated Padding'),
        ),
        body: Column(
          children: [
            Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Flexible(
                        flex: 1,
                        child: AnimatedPadding(
                          padding: EdgeInsets.all(myPadding),
                          duration: Duration(seconds: 1),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                myPadding = 20;
                              });
                            },
                            child: Container(
                              color: Colors.red,
                            ),
                          ),
                        )),
                    Flexible(
                      child: AnimatedPadding(
                        padding: EdgeInsets.all(myPadding),
                        duration: Duration(seconds: 1),
                        child: Container(
                          color: Colors.amber,
                        ),
                      ),
                    )
                  ],
                )),
            Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Flexible(
                        flex: 1,
                        child: AnimatedPadding(
                          padding: EdgeInsets.all(myPadding),
                          duration: Duration(seconds: 1),
                          child: Container(
                            color: Colors.green,
                          ),
                        )),
                    Flexible(
                      child: AnimatedPadding(
                        padding: EdgeInsets.all(myPadding),
                        duration: Duration(seconds: 1),
                        child: Container(
                          color: Colors.blue,
                        ),
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
