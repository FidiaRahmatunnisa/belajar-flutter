import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'application.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider<Application>(
        create: (context) => Application(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Consumer<Application>(
              builder: (context, application, _) => Text(
                'Provider State Management',
                style: TextStyle(color: application.color),
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<Application>(
                  builder: (context, application, _) => AnimatedContainer(
                    duration: const Duration(milliseconds: 10),
                    color: application.color,
                    margin: const EdgeInsets.all(5),
                    width: 100,
                    height: 100,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: const Text('AB'),
                      margin: const EdgeInsets.all(5),
                    ),
                    Consumer<Application>(
                        builder: (context, application, _) => Switch(
                            value: application.isLightBlue,
                            activeColor: application.color,
                            inactiveTrackColor: application.color,
                            onChanged: (newValue) {
                              application.isLightBlue = newValue;
                            })),
                    Container(
                      margin: const EdgeInsets.all(5),
                      child: const Text('LB'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
