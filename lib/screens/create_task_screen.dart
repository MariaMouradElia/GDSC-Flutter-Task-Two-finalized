import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:session_4_todo_task/constants/assets.dart';
import 'package:session_4_todo_task/model/task.dart';
import 'package:session_4_todo_task/widgets/input_task.dart';
import '../screen_components/create_task_screen/create_task_appbar.dart';
import '../screen_components/create_task_screen/create_task_elevated_button.dart';
import '../screen_components/create_task_screen/create_task_floating_action_button.dart';
import '../screen_components/create_task_screen/create_task_todo_listview.dart';
import '../utils/validation_utils.dart';
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});
  @override
  State<CreateTask> createState() => _CreateTaskState();
}
class _CreateTaskState extends State<CreateTask> {
  final TextEditingController _taskNameController = TextEditingController();
  final List<TextEditingController> listOfTodoControllersToBeCleared = [TextEditingController()];
  final List<TodoListStuff> listOfTodoNamesAndProgress = [];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButton: CreateTaskFloatingActionButton(
          controllers: listOfTodoControllersToBeCleared,
          namesAndProgress: listOfTodoNamesAndProgress,
          taskNameController: _taskNameController,
          myformKey: _formKey,
      ),
      appBar: const CreateTaskAppbar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0,),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Title",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                  ),),
                const SizedBox(height: 10),
                InputTask(
                  controller: _taskNameController,
                  prefix: SizedBox(
                    width: 2.0,
                    height: 2.0,
                    child: SvgPicture.asset(AssetData.taskPrefixImage, fit: BoxFit.scaleDown,),),
                  hintText: "Task title",
                  validator: (value) =>
                      ValidationUtilities.taskNameLength(value),
                ),
                const SizedBox(height: 15),
                Divider(
                  color: Color(AssetData.dividerColor),
                  thickness: 1,
                ),
                const SizedBox(height: 15),
                const Text("ToDos",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                  ),),
                const SizedBox(height: 10),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height * 0.1, // For example, max height is 50% of the screen height
                    maxHeight: MediaQuery.of(context).size.height * 0.5,
                  ),
                  child: CreateTaskTodoListview(
                    listOfControllers: listOfTodoControllersToBeCleared,
                  ),
                ),
                CreateTaskElevatedButton(
                    onclicked: () {
                      setState(() {
                        listOfTodoControllersToBeCleared.add(
                            TextEditingController());
                      });
                    }
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}