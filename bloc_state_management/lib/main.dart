import 'package:bloc_state_management/color_bloc.dart';
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
  ColorBloc bloc = ColorBloc();
  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                bloc.EventSink.add(ColorEvent.to_amber);
              },
              backgroundColor: Colors.amber,
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                bloc.EventSink.add(ColorEvent.to_lightBlue);
              },
              backgroundColor: Colors.lightBlue,
            ),
          ],
        ),
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text('Tanpa BLoC Library'),
        ),
        body: Center(
            child: StreamBuilder(
                stream: bloc.stateStream,
                initialData: Colors.amber,
                builder: (context, snapshot) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    height: 100,
                    width: 100,
                    color: snapshot.data,
                  );
                })),
      ),
    );
  }
}
