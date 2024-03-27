import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:session_4_todo_task/constants/assets.dart';
import '../screen_components/home_screen/home_screen_pop_up_menu_button.dart';
class TaskProgressListTile extends StatelessWidget {
  final String taskName ;
  final int num_of_tasks;
  final String taskPercent;
  final double percentage;
  final int indexOfTaskTile;


  const TaskProgressListTile({
    super.key,
    required this.taskName,
    required this.num_of_tasks,
    required this.taskPercent,
    required this.percentage,
    required this.indexOfTaskTile
  });

  @override
  Widget build(BuildContext context) {
    return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(AssetData.listTileBorderRadius)),
                color: Color(AssetData.listTileBackgroundColor),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, right: 10, bottom: 10,),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text( taskName, style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),),
                        const SizedBox(height: 5),
                        Text(num_of_tasks.toString(),
                          style: TextStyle(
                            color: AssetData.subtextColor,),
                        ),
                      ],
                    ),
                    const Spacer(),
                    CircularPercentIndicator(
                      progressColor: Colors.blue,
                      radius: 24,
                      center: Text(taskPercent),
                      percent: percentage,
                      lineWidth: 5.0,
                      backgroundColor: Color(AssetData.indicatorCircleBackgroundColor),
                    ),
                    const SizedBox(width: 8),
                    HomeScreenPopUpMenuButton(
                        indexOfTile: indexOfTaskTile
                    ),
                  ],
                ),
              )
          );
  }
}