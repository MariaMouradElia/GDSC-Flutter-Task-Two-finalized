import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../constants/assets.dart';
import '../../model/task.dart';
import '../../providers/task_provider.dart';

class CreateTaskFloatingActionButton extends StatelessWidget {
  final List<TextEditingController> controllers;
  final List<TodoListStuff> namesAndProgress;
  final TextEditingController taskNameController;
  final GlobalKey<FormState> myformKey;

  const CreateTaskFloatingActionButton({
    super.key,
    required this.controllers,
    required this.namesAndProgress,
    required this.taskNameController,
    required this.myformKey,
  });

  @override
  Widget build(BuildContext context) {
    final TaskProvider taskProvider = context.read<TaskProvider>();
    return FloatingActionButton(
      backgroundColor: Color(AssetData.floatingActionButtonBackgroundColor),
      child: Icon(Icons.check,
        color: Color(AssetData.floatingActionButtonTextColor),),
      onPressed: () {
        if (myformKey.currentState?.validate() ?? false) {
        for (int i = 0; i < controllers.length; i++) {
          if (myformKey.currentState?.validate() ?? false){
            namesAndProgress.add(
            TodoListStuff(
            todoName: controllers[i].text,
            isTodoFinished: false,
            ));
          }
        }
        taskProvider.addTask(
            taskNameController.text, namesAndProgress);
        Navigator.pop(context);
      }
        return;
      }
    );
  }
}