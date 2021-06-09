import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

void playsound(int i) {
  final player = AudioCache();
  player.play('note$i.wav');
}

Expanded buildKey(Color color, int i) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: color,
      ),
      onPressed: () {
        playsound(i);
      },
      child: null,
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.green, 3),
              buildKey(Colors.blue, 4),
              buildKey(Colors.purple, 5),
              buildKey(Colors.black, 6),
              buildKey(Colors.yellow, 7),
            ],
          ),
        ),
      ),
    );
  }
}
