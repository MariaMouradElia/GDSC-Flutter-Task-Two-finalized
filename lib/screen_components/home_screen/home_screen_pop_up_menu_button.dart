import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:session_4_todo_task/providers/task_provider.dart';

class HomeScreenPopUpMenuButton extends StatelessWidget {
  final int indexOfTile;

  const HomeScreenPopUpMenuButton({
    super.key,
    required this.indexOfTile
  });

  @override
  Widget build(BuildContext context) {

    SampleItem? selectedItem;
    final TaskProvider taskProvider = context.read<TaskProvider>();

    return PopupMenuButton<SampleItem>(
      onSelected: (SampleItem item){
        selectedItem = item;
        switch (selectedItem){
          case SampleItem.pinItem:
            taskProvider.pinTask(indexOfTile);
            break;
          case SampleItem.deleteItem:
            taskProvider.deleteTask(indexOfTile);
            taskProvider.pinnedTaskIndex == 0
                ? null
                : taskProvider.pinnedTaskIndex--;
            break;
          case null:
            break;
        }
      },
      itemBuilder: (context){
        return <PopupMenuEntry<SampleItem>>[
          const PopupMenuItem<SampleItem>(
              value: SampleItem.pinItem,
              child: Row(children: [Text("Pin"),Spacer(),Icon(Icons.push_pin)],)),
          const PopupMenuItem<SampleItem>(
              value: SampleItem.deleteItem,
              child: Row(children: [Text("Delete"),Spacer(),Icon(Icons.delete)],)),
        ];
      },
    );
  }
}

enum SampleItem {
  pinItem,
  deleteItem
}
