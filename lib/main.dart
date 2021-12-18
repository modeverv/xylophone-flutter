import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  playLocal(int num) {
    final player = AudioCache();
    player.play("note$num.wav");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    playLocal(1);
                  },
                  child: Text('play 1'),
                ),
                FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    playLocal(2);
                  },
                  child: Text('play 2'),
                ),
                FlatButton(
                  color: Colors.orange,
                  onPressed: () {
                    playLocal(3);
                  },
                  child: Text('play 3'),
                ),
                FlatButton(
                  color: Colors.yellow,
                  onPressed: () {
                    playLocal(4);
                  },
                  child: Text('play 4'),
                ),
                FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    playLocal(5);
                  },
                  child: Text('play 5'),
                ),
                FlatButton(
                  color: Colors.teal,
                  onPressed: () {
                    playLocal(6);
                  },
                  child: Text('play 6'),
                ),
                FlatButton(
                  color: Colors.purple,
                  onPressed: () {
                    playLocal(7);
                  },
                  child: Text('play 7'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
