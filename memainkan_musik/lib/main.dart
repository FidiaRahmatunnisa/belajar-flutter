import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String durasi = '00:00:00';
  late AudioPlayer audioPlayer;

  _MyAppState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onAudioPositionChanged.listen((duration) {
      durasi = duration.toString();
    });
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
  }

  void playSound(String url) async {
    await audioPlayer.play(url);
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void stopPause() async {
    await audioPlayer.stop();
  }

  void resumeSound() async {
    audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Playing Music'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  playSound('assets/std.mp3');
                },
                child: Text('Play'),
              ),
              ElevatedButton(
                onPressed: () {
                  pauseSound();
                },
                child: Text('Pause'),
              ),
              ElevatedButton(
                onPressed: () {
                  stopPause();
                },
                child: Text('Stop'),
              ),
              ElevatedButton(
                onPressed: () {
                  resumeSound();
                },
                child: Text('Resume'),
              ),
              Text(
                durasi,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
