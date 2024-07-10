import 'package:flutter/cupertino.dart';
import 'package:todo_frontend/Services/db_services.dart';
import 'package:todo_frontend/models/task.dart';

class TasksData extends ChangeNotifier{
  List<Task> tasks = [];

  void addTask(String taskTitle) async {
    Task task = await DbServices.addTask(taskTitle);
    tasks.add(task);
    notifyListeners();
  }
  void updateTask(Task task){
    task.toggle();
    DbServices.updateTask(task.id);
    notifyListeners();
  }

  void deleteTask(Task task){
    tasks.remove(task);
    DbServices.deleteTask(task.id);
    notifyListeners();
  }
}