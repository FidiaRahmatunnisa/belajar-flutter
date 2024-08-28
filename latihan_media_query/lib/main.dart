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
          title: Text('Latihan Media Query'),
        ),
        // body: Container(
        //   color: Colors.red[400],
        //   width: MediaQuery.of(context).size.width/3,
        //   height: MediaQuery.of(context).size.height/3,
        // ),
        body: (MediaQuery.of(context).orientation == Orientation.portrait) ? Column(
          children: generateContainers,
        ) : Row(
          children: generateContainers,
        ),
      ),
    );
  }

  List<Widget> get generateContainers {
    return <Widget>[
          Container(color: Colors.red, width: 100,height: 100,),
          Container(color: Colors.green, width: 100,height: 100,),
          Container(color: Colors.amber, width: 100,height: 100,),
        ];
  }
}