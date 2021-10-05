import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(piano());
}

class piano extends StatelessWidget {
  void playsound(int n) {
    final play = AudioCache();
    play.play('note$n.wav');
  }

  Expanded create(Color c, int n) {
    return Expanded(
      child: FlatButton(
        color: c,
        onPressed: () {
          playsound(n);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              create(Colors.lightGreenAccent, 1),
              create(Colors.redAccent, 2),
              create(Colors.lightBlueAccent, 3),
              create(Colors.orangeAccent, 4),
              create(Colors.teal, 5),
              create(Colors.lime, 6),
              create(Colors.deepPurple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
