import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(DrumsApp());

class DrumsApp extends StatelessWidget {
  void playSound(int toneNumber) {
    final player = AudioCache();
    player.play('$toneNumber.wav');
  }

  Expanded buildKey(int toneNumber, Color keyColor) {
    return Expanded(
      child: Container(
        color: keyColor,
        child: InkWell(
          onTap: () {
            playSound(toneNumber);
          },
          enableFeedback: false,
          focusColor: keyColor,
          child: Container(
            width: 100,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('BEAT IT!'),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  buildKey(1, Colors.red),
                  buildKey(2, Colors.orange),
                  buildKey(3, Colors.yellow),
                  buildKey(4, Colors.green),
                  buildKey(5, Colors.teal),
                  buildKey(6, Colors.blue),
                  buildKey(7, Colors.purple),
                ],
              ),
              Column(
                children: <Widget>[
                  buildKey(8, Colors.orange),
                  buildKey(9, Colors.yellow),
                  buildKey(10, Colors.green),
                  buildKey(11, Colors.teal),
                  buildKey(12, Colors.blue),
                  buildKey(13, Colors.purple),
                  buildKey(14, Colors.red),
                ],
              ),
              Column(
                children: <Widget>[
                  buildKey(15, Colors.yellow),
                  buildKey(16, Colors.green),
                  buildKey(17, Colors.teal),
                  buildKey(18, Colors.blue),
                  buildKey(19, Colors.purple),
                  buildKey(20, Colors.red),
                  buildKey(21, Colors.orange),
                ],
              ),
              Column(
                children: <Widget>[
                  buildKey(22, Colors.green),
                  buildKey(23, Colors.teal),
                  buildKey(24, Colors.blue),
                  buildKey(25, Colors.purple),
                  buildKey(26, Colors.red),
                  buildKey(27, Colors.orange),
                  buildKey(28, Colors.yellow),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
