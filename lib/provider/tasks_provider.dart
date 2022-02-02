import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management_app_flutter/constants/colors.dart';
import 'package:task_management_app_flutter/models/tasks_model.dart';

class TasksProvider with ChangeNotifier {
  final List<TaskModel> _taskList = [
    TaskModel(
      iconData: Icons.person_rounded,
      title: 'Personal',
      backgroundColor: tmLightYellow,
      iconColor: tmDarkYellow,
      buttonColor: tmYellow,
      left: 3,
      done: 1,
    ),
    TaskModel(
      iconData: Icons.work_rounded,
      title: 'Work',
      backgroundColor: tmLightRed,
      iconColor: tmDarkRed,
      buttonColor: tmRed,
      left: 0,
      done: 0,
    ),
    TaskModel(
      iconData: Icons.favorite_rounded,
      title: 'Health',
      backgroundColor: tmLightBlue,
      iconColor: tmDarkBlue,
      buttonColor: tmBlue,
      left: 0,
      done: 0,
    ),
    TaskModel(
      isEnd: true,
    ),
  ];

  List<TaskModel> get getTasksList {
    return [..._taskList];
  }
}
