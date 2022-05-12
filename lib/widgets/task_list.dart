import 'package:flutter/cupertino.dart';
import 'package:todo_flutter/widgets/task_tile.dart';

import '../models/task.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: tasks[index].name,
            isChecked: tasks[index].isDone,
            checkboxCallback: (checkedState) {
              setState(() {
                tasks[index].toggleIsDone();
              });
            });
      },
      itemCount: tasks.length,
    );
  }
}
