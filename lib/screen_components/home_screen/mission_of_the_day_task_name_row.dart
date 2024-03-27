import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:session_4_todo_task/providers/task_provider.dart';
import '../../constants/assets.dart';

class MissionOfTheDayTaskNameRow extends StatelessWidget {
  const MissionOfTheDayTaskNameRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (context, taskProvider, _){
        return Row(
          children: [
            Text( taskProvider.providerListOfTasks.isNotEmpty
                ? taskProvider.providerListOfTasks[taskProvider.pinnedTaskIndex].titleOfTask
                : "No Tasks Available",
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            SvgPicture.asset(AssetData.pinImage),
          ],
        );
      },
    );
  }
}
