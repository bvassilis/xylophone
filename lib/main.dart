import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xylophone/components/music_key.dart';
import 'package:xylophone/components/wood_connect.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.blue,
                  Colors.green,
                ],
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                MusicKey(color: Colors.red, soundNumber: 1, name: "C"),
                WoodConnect(soundNumber: 1),
                MusicKey(color: Colors.orange, soundNumber: 2, name: "D"),
                WoodConnect(soundNumber: 2),
                MusicKey(color: Colors.yellow, soundNumber: 3, name: "E"),
                WoodConnect(soundNumber: 3),
                MusicKey(color: Colors.green, soundNumber: 4, name: "F"),
                WoodConnect(soundNumber: 4),
                MusicKey(color: Colors.teal, soundNumber: 5, name: "G"),
                WoodConnect(soundNumber: 5),
                MusicKey(color: Colors.blue, soundNumber: 6, name: "A"),
                WoodConnect(soundNumber: 6),
                MusicKey(color: Colors.purple, soundNumber: 7, name: "B"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}