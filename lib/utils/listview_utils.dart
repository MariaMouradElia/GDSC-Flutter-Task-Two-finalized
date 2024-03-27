import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:session_4_todo_task/constants/assets.dart';
import 'package:session_4_todo_task/utils/validation_utils.dart';
import '../widgets/input_task.dart';

class ListViewUtilities {
  void Function()? onPushed;
  TextEditingController? myTextEditingController;

  static Widget itemBuilderFunction([context, index, myTextEditingController, onPushed,]){
      return Padding(
        padding: const EdgeInsets.only(bottom: 13.0),
          child: InputTask(
            controller: myTextEditingController,
            validator: (input) => ValidationUtilities.taskNameLength(input),
            hintText: "Todo ${index+1}",
            prefix: SizedBox(
              width: 2.0,
              height: 2.0,
              child: SvgPicture.asset(AssetData.todoPrefixImage,
                fit: BoxFit.scaleDown,
              ),
            ),
            suffix: createRedButton(index, onPushed),
          ),
      );
  }
}
ElevatedButton? createRedButton(int number, void Function() onPunched){
      if (number == 0) {
        return null;
      }
      return ElevatedButton(
        onPressed: onPunched,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        child: const Icon(Icons.highlight_remove_outlined,
          color: Colors.red,
        ),
      );
    }