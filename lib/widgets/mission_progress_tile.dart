import 'package:flutter/material.dart';
import 'package:session_4_todo_task/constants/assets.dart';

class MissionProgressTile extends StatelessWidget {
  final bool finishedTask;
  final String subtask_name;

  const MissionProgressTile({
    super.key,
    this.finishedTask = false,
    required this.subtask_name,

  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _greenIconOrNot(finishedTask),
        const SizedBox(width: 8),
        Text(subtask_name,
        style: TextStyle(
          color: Color(AssetData.todoInTaskOfTheDayColor),
        ),),
      ],
    );
  }

  Icon _greenIconOrNot(bool finishedTask){
    if (finishedTask){
      return const Icon(
        Icons.check_circle_outline_outlined,
        size: 20,
        weight: 2.0,
        color: Colors.green,
      );
    }
    return Icon(
      Icons.circle_outlined,
      size: 20,
      weight: 2.0,
      color: Color(AssetData.doneOrNotDoneTodoColor),
    );
  }
}
