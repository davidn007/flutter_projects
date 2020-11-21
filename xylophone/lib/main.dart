import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteSound) {
    final player = AudioCache();
    player.play('note$noteSound.wav');
  }

  Widget buildKey({Color keyColor, int soundNumber, Text keyText}) {
    return Expanded(
      child: FlatButton(
        color: keyColor,
        onPressed: () {
          playSound(soundNumber);
        },
        child: keyText,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(
                  keyColor: Colors.red, soundNumber: 1, keyText: Text('D')),
              buildKey(
                  keyColor: Colors.orange, soundNumber: 2, keyText: Text('R')),
              buildKey(
                  keyColor: Colors.yellow, soundNumber: 3, keyText: Text('M')),
              buildKey(
                  keyColor: Colors.green, soundNumber: 4, keyText: Text('F')),
              buildKey(
                  keyColor: Colors.blue, soundNumber: 5, keyText: Text('S')),
              buildKey(
                  keyColor: Colors.indigo, soundNumber: 6, keyText: Text('L')),
              buildKey(
                  keyColor: Colors.purple, soundNumber: 7, keyText: Text('T')),
            ],
          ),
        ),
      ),
    );
  }
}
