import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:session_4_todo_task/providers/task_provider.dart';

import '../../widgets/mission_progress_tile.dart';

class MissionOfTheDayListView extends StatelessWidget {
  const MissionOfTheDayListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (context, taskProvider,_) {
        return ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            if (taskProvider.providerListOfTasks.isNotEmpty) {
              return Column(
                children: [
                  const SizedBox(height: 10),
                  MissionProgressTile(
                    finishedTask: taskProvider.providerListOfTasks[taskProvider.pinnedTaskIndex].todosOfTask[index].isTodoFinished,
                    subtask_name: taskProvider.providerListOfTasks[taskProvider.pinnedTaskIndex].todosOfTask[index].todoName,
                  ),
                ],
              );
            }
            return null;
          },
          itemCount: taskProvider.providerListOfTasks.isNotEmpty
              ? taskProvider.providerListOfTasks[taskProvider.pinnedTaskIndex].todosOfTask.length
              : null,
        );
      },
    );
  }
}
