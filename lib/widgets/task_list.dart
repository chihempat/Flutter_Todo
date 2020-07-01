import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

import 'task_tile.dart';
import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemBuilder: (context, index) {
          final tasks = taskData.tasks[index];
          return TaskTile(
              taskTitle: '${tasks.name}',
              isChecked: tasks.isDone,
              longPressedCallback: () {
                taskData.deleteTask(tasks);
              },
              checkboxCallback: (checkBoxState) {
                taskData.updateTask(tasks);
              });
        },
        itemCount: taskData.taskCount,
      ),
    );
  }
}
