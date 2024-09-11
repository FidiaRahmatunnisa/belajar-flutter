import 'package:flutter/material.dart';
import 'package:bloc_state_management2/color_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<ColorBloc>(
        create: (context) => ColorBloc(Colors.amber),
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ColorBloc bloc = BlocProvider.of<ColorBloc>(context);
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              bloc.add(ColorEvent.to_amber);
            },
            backgroundColor: Colors.amber,
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              bloc.add(ColorEvent.to_lightblue);
            },
            backgroundColor: Colors.lightBlue,
          ),
        ],
      ),
      appBar: AppBar(
        title: Text('BLoC with Library'),
      ),
      body: Center(
        child: BlocBuilder<ColorBloc, Color>(
          builder: (context, currenColor) => AnimatedContainer(
            duration: Duration(seconds: 5),
            width: 100,
            height: 100,
            color: currenColor,
          ),
        ),
      ),
    );
  }
}
