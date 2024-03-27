import 'package:flutter/material.dart';
import '../model/task.dart';

class TaskProvider extends ChangeNotifier{

  final List<Task> providerListOfTasks = [];
  int pinnedTaskIndex = 0;

  void addTask(String title,List<TodoListStuff> todosInTask){
    providerListOfTasks.add(Task(titleOfTask: title, todosOfTask: todosInTask));
    notifyListeners();
  }

  void pinTask(int indexOfTask){
    providerListOfTasks[indexOfTask].isTheTaskPinned = true;
    pinnedTaskIndex = indexOfTask;
    notifyListeners();
  }

  void deleteTask(int indexOfTaskToBeDeleted){
    providerListOfTasks.removeAt(indexOfTaskToBeDeleted);
    notifyListeners();
  }

}