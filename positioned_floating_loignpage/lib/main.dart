import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: - getSmallDiameter(context)/3,
            top: - getSmallDiameter(context)/3,
            child: Container(
              width: getSmallDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Colors.purple.shade400,
                    Colors.pink.shade400,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  ),
              ),
            ),
          ),
           Positioned(
            left: - getBigDiameter(context)/4,
            top: - getBigDiameter(context)/4,
            child: Container(
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Colors.purple,
                    Colors.pink,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
