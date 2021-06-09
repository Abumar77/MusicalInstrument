import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

void playsound(int i) {
  final player = AudioCache();
  player.play('note$i.wav');
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
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    playsound(1);
                  },
                  child: null,
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.orange,
                  ),
                  onPressed: () {
                    playsound(2);
                  },
                  child: null,
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.yellow,
                  ),
                  onPressed: () {
                    playsound(3);
                  },
                  child: null,
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    playsound(4);
                  },
                  child: null,
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.teal,
                  ),
                  onPressed: () {
                    playsound(5);
                  },
                  child: null,
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    playsound(6);
                  },
                  child: null,
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.purple,
                  ),
                  onPressed: () {
                    playsound(7);
                  },
                  child: null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
