import 'package:flutter/material.dart';
import '../../utils/listview_utils.dart';

class CreateTaskTodoListview extends StatefulWidget {
  final List<TextEditingController> listOfControllers;

  CreateTaskTodoListview({
    super.key,
    required this.listOfControllers,
  });

  @override
  State<CreateTaskTodoListview> createState() => _CreateTaskTodoListviewState();
}

class _CreateTaskTodoListviewState extends State<CreateTaskTodoListview> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const AlwaysScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return
          ListViewUtilities.itemBuilderFunction(context, index, widget.listOfControllers[index],
            (){
              setState(() {
                widget.listOfControllers.removeAt(index);
              });
              },
          );
      },
      itemCount: widget.listOfControllers.length,
    );
  }
}
