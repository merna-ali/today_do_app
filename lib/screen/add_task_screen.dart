import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  void Function(String?) addTaskCallBack;
  AddTaskScreen({super.key, required this.addTaskCallBack});

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Text(
            'Add Task',
            style: TextStyle(
                color: Color.fromARGB(255, 14, 67, 87),
                fontSize: 30,
                fontWeight: FontWeight.w600),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 60,
                  child: ElevatedButton(
                      onPressed: () {
                        Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle!);
                        Navigator.pop(context);
                       // Provider.of<TaskData>(context).addTask(newTaskTitle!);
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            Color.fromARGB(255, 14, 67, 87)),
                      ),
                      child: Text(
                        'Add',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      )),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
