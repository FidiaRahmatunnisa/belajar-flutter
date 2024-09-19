import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<bool> isSelected = [true, false, false];
  ColorFilter colorFilter = ColorFilter.mode(Colors.pink, BlendMode.screen);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorFiltered(
        colorFilter: colorFilter,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Flutter 1.9'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SelectableText(
                  'ini adalah widget selectable Text, coba gunakan',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                  cursorColor: Colors.amber,
                  showCursor: true,
                  cursorWidth: 3,
                ),
                SizedBox(
                  height: 20,
                ),
                ToggleButtons(
                    children: [
                      Icon(Icons.beach_access),
                      Icon(Icons.motorcycle),
                      Icon(Icons.card_giftcard_sharp)
                    ],
                    onPressed: (index) {
                      setState(() {
                        if (index == 0) {
                          colorFilter =
                              ColorFilter.mode(Colors.pink, BlendMode.screen);
                        } else if (index == 1) {
                          colorFilter = ColorFilter.mode(
                              Colors.orange, BlendMode.multiply);
                        } else {
                          colorFilter = ColorFilter.mode(
                              Colors.purple, BlendMode.softLight);
                        }

                        for (int i = 0; i < isSelected.length; i++) {
                          isSelected[i] = (i == index) ? true : false;
                        }
                      });
                    },
                    isSelected: isSelected,
                    fillColor: Colors.red.withOpacity(0.2),
                    selectedColor: Colors.red,
                    splashColor: Colors.lightBlue,
                    highlightColor: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                    borderColor: Colors.white)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
