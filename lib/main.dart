import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone App'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Container(
            child: Center(
              child: Text(nouns.last),
            ),
          ),
        ),
      ),
    );
  }
}
