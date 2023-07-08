import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MusicKey extends StatelessWidget {
  MusicKey(
      {required this.color, required this.soundNumber, required this.name});

  final Color color;
  final int soundNumber;
  final String name;

  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: 70 - this.soundNumber.toDouble() * 10),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: this.color,
          ),
          onPressed: () {
            playSound();
          },
          child: Container(
              child: Text(this.name,
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold
                  )
              )
          ),
        ),
      ),
    );
  }
}
