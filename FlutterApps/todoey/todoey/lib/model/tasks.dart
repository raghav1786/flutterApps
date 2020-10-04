import 'package:flutter/material.dart';

class Tasks {
  final String taskName;
  bool isDone = false;
  Tasks({@required this.taskName, this.isDone});

  void toggleDone() {
    isDone = !isDone;
  }
}
