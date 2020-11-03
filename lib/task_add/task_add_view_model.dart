import 'package:flutter/material.dart';
import 'package:flutter_todo/task_add/task.dart';
import 'package:hooks_riverpod/all.dart';

final taskAddViewModelProvider = ChangeNotifierProvider(
  (ref) => TaskAddViewModel(),
);

class TaskAddViewModel extends ChangeNotifier {
  addTask(Task task) {
    print(task);
  }
}
