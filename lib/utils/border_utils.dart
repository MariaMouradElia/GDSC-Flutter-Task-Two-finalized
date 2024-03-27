import 'package:flutter/material.dart';
import 'package:session_4_todo_task/constants/assets.dart';

class BorderUtilities {
  static InputBorder getBorder(){
    return OutlineInputBorder(
        borderSide : const BorderSide(
          color: Colors.transparent,
        ),
        borderRadius : BorderRadius.all(Radius.circular(AssetData.listTileBorderRadius)
    ),
    );
  }
}