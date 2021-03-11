import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  void playss(int snum) {
    final player = AudioCache();
    player.play('note$snum.wav');
  }

  Expanded makebut(int a, Color b) {
    return Expanded(
      child: FlatButton(
        color: b,
        onPressed: () {
          playss(a);
        },
        child: null,
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            makebut(1, Colors.red),
            makebut(2, Colors.orange),
            makebut(3, Colors.yellow),
            makebut(4, Colors.green),
            makebut(5, Colors.blue),
            makebut(6, Colors.indigo),
            makebut(7, Colors.purple),
          ],
        )),
      ),
    );
  }
}
