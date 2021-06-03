import 'package:flutter/material.dart';

import './task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return GridView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
                isChecked: task.isDone,
                taskTitle: task.name,
                deleteTaskCallBack: () {
                  taskData.deleteData(task);
                },
                checkBoxCallBack: (checkboxState) {
                  taskData.updateData(task);
                });
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
