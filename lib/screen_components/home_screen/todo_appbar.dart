import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:session_4_todo_task/constants/assets.dart';

class TodoAppbar extends StatelessWidget implements PreferredSizeWidget{
  const TodoAppbar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: SvgPicture.asset(AssetData.logoImage),
      title: Text(
        "ToDo",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: AssetData.screenTitleColor,
        ),
      ),
      actions: [
        SvgPicture.asset(AssetData.settingsImage),
      ],
    );
  }
  @override
  Size get preferredSize => const Size(double.maxFinite, 80);
}
