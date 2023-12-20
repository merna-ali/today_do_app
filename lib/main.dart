import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:today_do_app/model/task_data.dart';
import 'package:today_do_app/screen/task_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context)=>TaskData(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TaskScreen());
  }
}
