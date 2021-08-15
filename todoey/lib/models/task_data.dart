import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [Task(name: 'Test npm'), Task(name: 'Deploy WebApp'), Task(name: 'Setup CI/CD')];
  

}