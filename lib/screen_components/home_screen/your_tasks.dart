import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:session_4_todo_task/constants/assets.dart';
import 'package:session_4_todo_task/providers/task_provider.dart';
import 'package:session_4_todo_task/widgets/task_progress_list_tile.dart';

class YourTasks extends StatelessWidget {
  const YourTasks ({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (context, TaskListProvider,_) {
        return Column(
          children: [
            Row(
              children: [
                const Text(
                  "Your Tasks",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/createtask');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(AssetData.elevatedButtonBackgroundColor),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AssetData.elevatedButtonBorderRadius),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AssetData.taskPlusImage),
                        const SizedBox(width: 5),
                        const Text('Add',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ), // AddButton
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: TaskProgressListTile(
                          taskName: TaskListProvider.providerListOfTasks[index].titleOfTask,
                          num_of_tasks: TaskListProvider.providerListOfTasks[index].todosOfTask.length,
                          taskPercent: "${TaskListProvider.providerListOfTasks[index].taskProgressPercentage.toString()}%",
                          percentage: TaskListProvider.providerListOfTasks[index].taskProgressPercentage,
                          indexOfTaskTile: index,
                      ),
                    );
                  },
                  itemCount: TaskListProvider.providerListOfTasks.length,
        ),
        ),
        ],
        );
      }
      
    );
  }
}
