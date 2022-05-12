import 'package:flutter/material.dart';

class AddTaskModal extends StatelessWidget {
  final Function addTaskCallback;

  AddTaskModal(this.addTaskCallback);

  String? newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlueAccent,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (newTaskTitle != null) {
                addTaskCallback(newTaskTitle);
              }
            },
            child: Text('Add'),
          )
        ],
      ),
    );
  }
}
