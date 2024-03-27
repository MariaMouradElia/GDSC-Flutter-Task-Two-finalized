class Task {
  final String titleOfTask;
  final List<TodoListStuff> todosOfTask;
  late final double taskProgressPercentage;
  bool isTheTaskPinned;

  Task({
    required this.titleOfTask,
    required this.todosOfTask,
    this.isTheTaskPinned = false,
  }){
    final numberOfTodosDone = todosOfTask.where((todo) => todo.isTodoFinished).length;
    taskProgressPercentage =  numberOfTodosDone/ todosOfTask.length;
  }
}

class TodoListStuff {
  late final String todoName;
  late final bool isTodoFinished;

  TodoListStuff({required this.todoName, required this.isTodoFinished});
}