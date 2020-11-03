import 'package:flutter/cupertino.dart';
import 'package:flutter_todo/home/home.dart';
import 'package:flutter_todo/task_add/task_add_page.dart';

final Map<String, WidgetBuilder> routes = {
  "/": (BuildContext context) => MyHomePage(title: 'Flutter Demo Home Page'),
  "/add": (BuildContext context) => TaskAddPage(),
};
