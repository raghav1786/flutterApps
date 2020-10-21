import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.blue[900],
        title: const Text(
          'Ask me Anything',
          textAlign: TextAlign.left,
        ),
      ),
      body: Container(
        child: Center(child: Ball()),
        color: Colors.blue,
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  var ballImageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {
          setState(() {
            ballImageNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$ballImageNumber.png'));
  }
}
