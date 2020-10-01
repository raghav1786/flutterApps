import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Widget getPlayButton({String title, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          // final audioCache = AudioCache();
          // audioCache.play('note$title.wav');
        },
        color: color,
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                getPlayButton(title: '1', color: Colors.blueAccent),
                getPlayButton(title: '2', color: Colors.indigo),
                getPlayButton(title: '3', color: Colors.blue),
                getPlayButton(title: '4', color: Colors.green),
                getPlayButton(title: '5', color: Colors.yellow),
                getPlayButton(title: '6', color: Colors.orange),
                getPlayButton(title: '7', color: Colors.red),
              ],
              crossAxisAlignment: CrossAxisAlignment.stretch,
            ),
          ),
        ),
      ),
    );
  }
}
