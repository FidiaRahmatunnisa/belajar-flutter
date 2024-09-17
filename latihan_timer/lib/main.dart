import 'dart:async';
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
  int counter = 0;
  bool isBlack = true;
  bool isStop = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Latihan Timer',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                counter.toString(),
                style: TextStyle(
                    fontSize: 40,
                    color: (isBlack) ? Colors.black : Colors.amber,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Timer(Duration(seconds: 5), () {
                    setState(() {
                      isBlack = !isBlack;
                    });
                  });
                },
                child: Text('ubah warna 5 detik kemudian'),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Timer.run(() {
                      setState(() {
                        isBlack = !isBlack;
                      });
                    });
                  },
                  child: Text('ubah warna secara langsung')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    counter = 0;
                    isStop = false;
                    Timer.periodic(Duration(seconds: 1), (timer) {
                      setState(() {
                        if (isStop) timer.cancel();
                        setState(() {
                          counter++;
                        });
                      });
                    });
                  },
                  child: Text('start timer')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  isStop = true;
                },
                child: Text('stop timer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
