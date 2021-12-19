import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  playLocal(int num) {
    final player = AudioCache();
    player.play("note$num.wav");
  }

  Widget byKey({Color color, int soundKey}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playLocal(soundKey);
        },
        child: Text('play $soundKey'),
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
              byKey(color: Colors.red, soundKey: 1),
              byKey(color: Colors.blue, soundKey: 2),
              byKey(color: Colors.orange, soundKey: 3),
              byKey(color: Colors.yellow, soundKey: 4),
              byKey(color: Colors.green, soundKey: 5),
              byKey(color: Colors.teal, soundKey: 6),
              byKey(color: Colors.purple, soundKey: 7),
            ],
          ),
        ),
      ),
    );
  }
}
