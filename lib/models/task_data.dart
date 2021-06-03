import 'package:flutter/foundation.dart';
import './tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [];

  int get taskCount {
    return tasks.length;
  }

  void addTask(String taskTitle) {
    final task = Task(name: taskTitle);
    tasks.add(task);
    notifyListeners();
  }

  void deleteData(Task task) {
    tasks.remove(task);
    notifyListeners();
  }

  void updateData(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
