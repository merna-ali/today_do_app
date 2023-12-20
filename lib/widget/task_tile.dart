import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({
    super.key,
    required this.isCheck,
    required this.taskTitle,
    required this.checkboxChange,
    required this.listTileDelete,
  });

  bool? isCheck;
  final String? taskTitle;
  final void Function(bool?) checkboxChange;
  final void Function() listTileDelete;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle ?? '',
        style: TextStyle(
            decoration: isCheck == false ? null : TextDecoration.lineThrough),
      ),
      trailing: Checkbox(
          activeColor: Color.fromARGB(255, 14, 67, 87),
          value: isCheck,
          onChanged: checkboxChange),
      onLongPress: listTileDelete,
    );
  }
}
