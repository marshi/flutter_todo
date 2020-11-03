import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_todo/task_add/task.dart';
import 'package:flutter_todo/task_add/task_add_view_model.dart';
import 'package:hooks_riverpod/all.dart';

class TaskAddPage extends HookWidget {
  static final routeName = "/add";

  final _formKey = GlobalKey<FormState>();
  Task _task = new Task();

  @override
  Widget build(BuildContext context) {
    final viewModel = useProvider(taskAddViewModelProvider);
    return Scaffold(
      body: Container(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: "task"),
                onSaved: (newValue) => _task.task = newValue,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "description"),
                onSaved: (newValue) => _task.description = newValue,
              ),
              RaisedButton(
                child: Text("submit"),
                onPressed: () {
                  _formKey.currentState.save();
                  viewModel.addTask(_task);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
