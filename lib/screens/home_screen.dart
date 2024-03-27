import 'package:flutter/material.dart';
import '../screen_components/home_screen/mission_of_the_day.dart';
import '../screen_components/home_screen/todo_appbar.dart';
import '../screen_components/home_screen/welcoming_user.dart';
import '../screen_components/home_screen/your_tasks.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TodoAppbar(),
      body: Padding(
        padding: EdgeInsets.only(
          left: 15.0,
          right: 15.0,
          bottom: 15.0,),
        child: Column(
          children: [
            WelcomingUser(),
            SizedBox(height: 20),
            MissionOfTheDayWidget(),
            SizedBox(height: 20),
            Expanded(child: YourTasks(),),
          ],
        ),
      ),
    );
    }
  }

