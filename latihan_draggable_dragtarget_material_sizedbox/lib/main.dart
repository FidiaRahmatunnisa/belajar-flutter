import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.red;
  Color color2 = Colors.amber;
  bool isAccepted = false;
  Color targetColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('latihan sizedBox, Material, Draggable, DragTarget'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Draggable<Color>(
                  data: color1,
                  child: SizedBox(
                    // benda awalnya
                    width: 150,
                    height: 150,
                    child: Material(
                      color: color1,
                      shape: StadiumBorder(),
                      elevation: 5,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    // bayangan asal yang tinggal, makanya dikasih warna abu-abu
                    width: 150,
                    height: 150,
                    child: Material(
                      color: Colors.black38,
                      shape: StadiumBorder(),
                    ),
                  ),
                  feedback: SizedBox(
                    // benda yang di drag, jadi nya melayang gitu pas di tahan dan digerakan mouse
                    width: 150,
                    height: 150,
                    child: Material(
                      color: color1.withOpacity(0.5),
                      shape: StadiumBorder(),
                    ),
                  ),
                ),
                Draggable<Color>(
                  data: color2,
                  child: SizedBox(
                    // benda awalnya
                    width: 150,
                    height: 150,
                    child: Material(
                      color: color2,
                      shape: StadiumBorder(),
                      elevation: 5,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    // bayangan asal yang tinggal, makanya dikasih warna abu-abu
                    width: 150,
                    height: 150,
                    child: Material(
                      color: Colors.black38,
                      shape: StadiumBorder(),
                    ),
                  ),
                  feedback: SizedBox(
                    // benda yang di drag, jadi nya melayang gitu pas di tahan dan digerakan mouse
                    width: 150,
                    height: 150,
                    child: Material(
                      color: color2.withOpacity(0.5),
                      shape: StadiumBorder(),
                    ),
                  ),
                ),
              ],
            ),
            DragTarget<Color>(
              onWillAccept: (value) => true,
              onAccept: (value) {
                isAccepted = true;
                targetColor = value;
              },
              builder: (context, candidates, rejected) {
                return (isAccepted)
                    ? SizedBox(
                        width: 200,
                        height: 200,
                        child: Material(
                          color: targetColor,
                          shape: StadiumBorder(),
                          elevation: 5,
                        ),
                      )
                    : SizedBox(
                        width: 200,
                        height: 200,
                        child: Material(
                          color: Colors.black38,
                          shape: StadiumBorder(),
                          elevation: 5,
                        ),
                      );
              },
            ),
          ],
        ),
      ),
    );
  }
}
