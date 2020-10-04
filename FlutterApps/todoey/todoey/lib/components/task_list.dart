import 'package:flutter/material.dart';
import '../model/tasks.dart';

class TaskList extends StatefulWidget {
  final List<Tasks> tasks;
  TaskList({this.tasks});
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskName: widget.tasks[index].taskName,
          isChecked: widget.tasks[index].isDone,
          onChanged: (bool checkBoxState) {
            setState(() {
              widget.tasks[index].isDone = checkBoxState;
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskName;
  final Function onChanged;
  TaskTile({this.isChecked, this.onChanged, this.taskName});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: onChanged,
      ),
    );
  }
}

// for large number of list items

// use list view builder
