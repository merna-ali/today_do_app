import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:today_do_app/model/task_data.dart';
import 'package:today_do_app/widget/task_tile.dart';

import '../model/task_model.dart';

class ListOfTask extends StatelessWidget {
  ListOfTask({
    super.key,
  });

  @override
  @override
  Widget build(BuildContext context) {
    var taskList = Provider.of<TaskData>(context);
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: 18,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: ListView.builder(
            itemCount: taskList.tasks.length,
            itemBuilder: (context, index) {
              return TaskTile(
                isCheck: taskList.tasks[index].isDone,
                taskTitle: taskList.tasks[index].name,
                checkboxChange: (newValue) {
                  taskList.updateTask(taskList.tasks[index]);
                },
                listTileDelete: (){
                  taskList.deleteTask(taskList.tasks[index]);
                },

              );
            }),
      ),
    );
  }
}
