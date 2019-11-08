import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Xylophone App'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(no: 1, c: Colors.red),
                buildKey(no: 2, c: Colors.orange),
                buildKey(no: 3, c: Colors.yellow),
                buildKey(no: 4, c: Colors.green),
                buildKey(no: 5, c: Colors.teal),
                buildKey(no: 6, c: Colors.blue),
                buildKey(no: 7, c: Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildKey({int no, Color c}) {
    return Expanded(
      child: FlatButton(
        onPressed: () => playSound(no),
        color: c,
      ),
    );
  }

  void playSound(int num) {
    final AudioCache player = AudioCache();
    player.play('note$num.wav');
  }
}
