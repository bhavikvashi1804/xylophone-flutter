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
                Expanded(
                  child: FlatButton(
                    onPressed: () => playSound(1),
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () => playSound(2),
                    color: Colors.orange,
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () => playSound(3),
                    color: Colors.yellow,
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () => playSound(4),
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () => playSound(5),
                    color: Colors.teal,
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () => playSound(6),
                    color: Colors.blue,
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () => playSound(7),
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void playSound(int num) {
    final AudioCache player = AudioCache();
    player.play('note$num.wav');
  }
}
