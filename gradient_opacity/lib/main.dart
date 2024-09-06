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
          title: Text('Gradasi Opacity'),
        ),
        body: ShaderMask(
          shaderCallback: (rectangle) {
            return LinearGradient(
              colors: [
                Colors.black,
                Colors.transparent,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ).createShader(
                Rect.fromLTRB(0, 0, rectangle.width, rectangle.height)
            );
          },
          blendMode: BlendMode.dstIn,
          child: Center(
            child: Image(
              image: AssetImage('assets/alam.jpg'),
              width: 300,
            ),
          ),
        ),
      ),
    );
  }
}
