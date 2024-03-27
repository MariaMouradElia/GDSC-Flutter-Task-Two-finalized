import 'package:flutter/material.dart';
import 'package:session_4_todo_task/constants/assets.dart';

class CreateTaskAppbar extends StatelessWidget implements PreferredSizeWidget{
  const CreateTaskAppbar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: ElevatedButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.white,
        ),
      ),
      title: Text("Create Task",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: AssetData.screenTitleColor,
        ),
      ),
    );
  }
  @override
  Size get preferredSize => const Size(double.maxFinite, 80);
}