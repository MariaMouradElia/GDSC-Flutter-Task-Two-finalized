import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:session_4_todo_task/constants/assets.dart';
import 'package:session_4_todo_task/providers/task_provider.dart';
import 'package:session_4_todo_task/screens/create_task_screen.dart';
import 'package:session_4_todo_task/screens/home_screen.dart';

void main(){
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TaskProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Color(AssetData.backgroundColor),
            colorScheme: ColorScheme.dark(
              primary: Color(AssetData.backgroundColor),
              background: Color(AssetData.backgroundColor),
            )
        ),
        home: const HomeScreen(),
        routes: {
          '/createtask': (context) => const CreateTask(),
        },
      ),
    );
  }
}
