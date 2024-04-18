import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/model/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: 'Buy Bread'),
    Task(name: 'Buy Milk')
  ];

  void addTask(String taskName){
    tasks.add(Task(name: taskName));
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggle();
    notifyListeners();
  }

  void deleteTask(Task task){
     tasks.remove(task);
     notifyListeners();
  }
}