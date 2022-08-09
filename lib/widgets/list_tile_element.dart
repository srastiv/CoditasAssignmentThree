import 'package:coditas_assignment_3_todo/todo_list_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants.dart';
import '../provider/task_provider.dart';

class ListTileElement extends StatelessWidget {
  TodoListElements element;
  ListTileElement(this.element);

  @override
  Widget build(BuildContext context) {
    Provider.of<TaskProvider>(context).tempElement;
    bool isChecked = false;
    return ListTile(
      tileColor: kTileColor,
      trailing: kListTrailing,
      //Text(Provider.of<TaskProvider>(context).tempElement.toString()),
      title: Text(
        element.taskName,
        style: TextStyle(
          decoration:
              element.isTaskCompleted ? (TextDecoration.lineThrough) : null,
        ),
      ),
      subtitle: Text(
        element.taskDate,
        style: TextStyle(
          color: Colors.black,
          decoration:
              element.isTaskCompleted ? (TextDecoration.lineThrough) : null,
          // color: Colors.black,
        ),
      ),
      leading: GestureDetector(
        onTap: () {
          Provider.of<TaskProvider>(context, listen: false)
              .taskCompleted(element);
          //  context.read<TaskProvider>().taskCompleted(element);
        },
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 30,
          child: element.isTaskCompleted
              ? Icon(
                  Icons.check,
                  color: Colors.black,
                )
              : null,
        ),
      ),
    );
  }
}
