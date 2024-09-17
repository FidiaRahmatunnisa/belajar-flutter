import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  late final double width;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Progress Bar'),
        ),
        body: Center(
            child: ChangeNotifierProvider<TimeState>(
          create: (context) => TimeState(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<TimeState>(
                builder: (context, timeState, _) => CustomProgressBar(
                    width: 200, 
                    value: timeState.time, 
                    totalValue: 100
                    ),
              ),
              SizedBox(
                height: 20,
              ),
              Consumer<TimeState>(
                builder: (context, timeState, _) => ElevatedButton(
                    onPressed: () {
                      Timer.periodic(Duration(milliseconds: 100), (timer) {
                        if (timeState.time == 0)
                          timer.cancel();
                        else
                          timeState.time -= 1;
                      });
                    },
                    child: Text('Start'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue)
                  ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

class CustomProgressBar extends StatelessWidget {
  late final double width;
  late final int value;
  late final int totalValue;

  CustomProgressBar(
      {required this.width, required this.value, required this.totalValue});

  @override
  Widget build(BuildContext context) {
    double ratio = value / totalValue;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.timer,
          color: Colors.amber,
        ),
        SizedBox(
          width: 5,
        ),
        Stack(
          children: [
            Container(
              width: width,
              height: 10,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            Material(
              borderRadius: BorderRadius.circular(5),
              elevation: 3,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 1000),
                width: width * ratio,
                height: 10,
                decoration: BoxDecoration(
                    color: (ratio < 0.3)
                        ? Colors.red
                        : (ratio < 0.6)
                            ? Colors.amber
                            : Colors.lightGreen,
                    borderRadius: BorderRadius.circular(5)
                    ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class TimeState extends ChangeNotifier {
  int _time = 100;
  int get time => _time;
  set time(int newTime) {
    _time = newTime;
    notifyListeners();
  }
}
