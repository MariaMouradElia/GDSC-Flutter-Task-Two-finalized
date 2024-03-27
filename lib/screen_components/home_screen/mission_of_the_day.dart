import 'package:flutter/material.dart';
import 'package:session_4_todo_task/constants/assets.dart';
import 'mission_of_the_day_circular_percent_indicator.dart';
import 'mission_of_the_day_listview.dart';
import 'mission_of_the_day_task_name_row.dart';

class MissionOfTheDayWidget extends StatelessWidget {
  const MissionOfTheDayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(40)),
        color: Color(AssetData.containerBackgroundColor),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const MissionOfTheDayTaskNameRow(),
            Divider(
              color: Color(AssetData.dividerColor),
              thickness: 1,
              endIndent: 60,
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth:200,
                minHeight:100,
              ),
              child: const Row(
                children: [
                   Expanded(
                     child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MissionOfTheDayListView(),
                      ],
                   ),
            ),
                      Spacer(),
                       Column(
                       children: [
                        SizedBox(height: 20),
                         MissionOfTheDayCircularPercentIndicator(),
                      ],
                  ),
          ],
        ),
            ),
      ],
      ),
    ),
    );
  }
}