import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:session_4_todo_task/providers/task_provider.dart';
import '../../constants/assets.dart';

class MissionOfTheDayCircularPercentIndicator extends StatelessWidget {
  const MissionOfTheDayCircularPercentIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (context, taskProvider,_){
        return CircularPercentIndicator(
          radius: 34.0,
          lineWidth: 7.0,
          percent: taskProvider.providerListOfTasks.isNotEmpty
              ? taskProvider.providerListOfTasks[taskProvider.pinnedTaskIndex].taskProgressPercentage
              : 0.0,
          center: Text("${ taskProvider.providerListOfTasks.isNotEmpty
              ? taskProvider.providerListOfTasks[taskProvider.pinnedTaskIndex].taskProgressPercentage.toString()
              : "0.0"
          }%"),
          progressColor: Colors.blue,
          backgroundColor: Color(AssetData.indicatorCircleBackgroundColor),
        );
      },
    );
  }
}
