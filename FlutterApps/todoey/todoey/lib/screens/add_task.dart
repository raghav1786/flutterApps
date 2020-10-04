import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function onAddition;
  AddTaskScreen(this.onAddition);
  @override
  Widget build(BuildContext context) {
    String taskName;
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  taskName = value;
                },
              ),
              SizedBox(height: 20.0),
              FlatButton(
                color: Colors.lightBlueAccent,
                onPressed: () {
                  onAddition(taskName);
                  Navigator.pop(context);
                },
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
