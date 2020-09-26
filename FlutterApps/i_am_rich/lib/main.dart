import 'package:flutter/material.dart';

// Main function will be start for our flutter apps

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(image: NetworkImage('https://www.w3schools.com/w3css/img_lights.jpg',
          ),
        ),
        ),
        backgroundColor: Colors.blueGrey,
      ),
    ),
  );
}

