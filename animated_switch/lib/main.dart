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
  bool isOn = true;
  Widget myWidget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(
          color: Colors.black,
          width: 3,
        )),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Switch Animated'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedSwitcher(
                duration: Duration(seconds: 1),
                child: myWidget,
                // transitionBuilder: (child, animation)=> ScaleTransitio
                transitionBuilder: ((child, animation) => RotationTransition(
                      turns: animation,
                      child: child,
                    )),
              ),
              Switch(
                value: isOn,
                activeColor: Colors.amber,
                inactiveThumbColor: Colors
                    .blue.shade600, // kalau thumb = berarti bulatan switch
                inactiveTrackColor: Colors.blue
                    .shade300, // kalau track = baru warna si switchnya (kecuali thumb)
                onChanged: (newValue) {
                  isOn = newValue;
                  setState(() {
                    if (isOn) {
                      myWidget = Container(
                        key: ValueKey(1),
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            border: Border.all(
                              color: Colors.black,
                              width: 3,
                            )),
                      );
                      // myWidget = SizedBox(
                      //   width: 200,
                      //   height: 100,
                      //   child: Center(
                      //     child: Text(
                      //       'Switched On',
                      //       style: TextStyle(
                      //         color: Colors.amber,
                      //         fontSize: 20,
                      //         fontWeight: FontWeight.w700
                      //       ),
                      //     ),
                      //   ),
                      // );
                    } else {
                      myWidget = Container(
                        key: ValueKey(2),
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.black,
                            width: 3,
                          ),
                        ),
                      );
                    }
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
