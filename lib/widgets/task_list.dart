import 'package:flutter/cupertino.dart';
import 'package:todo_flutter/widgets/task_tile.dart';

import '../models/task.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;
  TaskList(this.tasks);
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkboxCallback: (checkedState) {
              setState(() {
                widget.tasks[index].toggleIsDone();
              });
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}
