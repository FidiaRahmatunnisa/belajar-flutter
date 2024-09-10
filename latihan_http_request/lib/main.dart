import 'package:flutter/material.dart';
import 'package:latihan_http_request/push_http_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult1? postResult;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan HTTP Request'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text((postResult != null)
                  ? postResult!.id! +
                      " | " +
                      postResult!.name! +
                      " | " +
                      postResult!.job! +
                      " | " +
                      postResult!.created! +
                      " | "
                  : "Tidak ada"),
              ElevatedButton(
                  onPressed: () {
                    PostResult1.connectToAPI("morpheus", "leader").then((value) {
                      postResult = value;
                      setState(() {});
                    });
                  },
                  child: Text('PUSH')),
            ],
          ),
        ),
      ),
    );
  }
}
