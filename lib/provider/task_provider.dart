import 'package:flutter/material.dart';

import '../todo_list_class.dart';

class TaskProvider with ChangeNotifier {
   int totalTaskDone = 0;
  int tempElement = 0;
  taskCompleted(TodoListElements element) {
    if (element.isTaskCompleted) {
      element.isTaskCompleted = false;
      totalTaskDone--;
    } else {
      element.isTaskCompleted = true;
        totalTaskDone++;
    }
    notifyListeners();
  }
}
