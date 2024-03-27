import 'package:flutter/material.dart';
import 'package:session_4_todo_task/constants/assets.dart';
import 'package:session_4_todo_task/constants/sentences.dart';

class WelcomingUser extends StatefulWidget {
  const WelcomingUser({super.key});
  @override
  State<WelcomingUser> createState() => _WelcomingUserState();
}
class _WelcomingUserState extends State<WelcomingUser> {
  String user = 'Maria';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(AssetData.profileImg),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello $user,",
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(Sentences.welcomingSentence,
                style: TextStyle(
                  color: AssetData.subtextColor,
                ),),
            ],
          )
        ],
      ),
    );
  }
}
