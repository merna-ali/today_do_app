import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:today_do_app/model/task_data.dart';

import '../model/task_model.dart';
import '../widget/list_of_task.dart';
import 'add_task_screen.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var tasksProv =Provider.of<TaskData>(context);
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => AddTaskScreen(
                    addTaskCallBack: (newTaskTitle) {
                 //          tasksProv.addTask(newTaskTitle!);
                 // // setState(() {
                 // //   tasksProv.tasks.add(TaskModel(name: newTaskTitle));
                 //    Navigator.pop(context);
                 // });
                    },
                      ));
            },
            backgroundColor: Color.fromARGB(100, 141, 141, 141),
            heroTag: FloatingActionButtonLocation.centerDocked,
            child: Icon(
              Icons.add,
              size: 30,
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 14, 67, 87),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.playlist_add_check,
                    color: Colors.white,
                    size: 40,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'ToDayDo',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '${tasksProv.tasks.length} Tasks',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              ListOfTask()
            ],
          ),
        ),
      ),
    );
  }
}
