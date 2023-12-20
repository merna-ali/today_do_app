import 'package:flutter/material.dart';
import 'package:today_do_app/model/task_model.dart';

class TaskData extends ChangeNotifier {
  List<TaskModel> tasks = [

  ];

  void addTask(String newTaskTitle) {
    tasks.add(TaskModel(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(TaskModel taskModel) {
    taskModel.doneChange();
    notifyListeners();
  }  void deleteTask(TaskModel taskModel) {
    tasks.remove(taskModel);
    notifyListeners();
  }
}
