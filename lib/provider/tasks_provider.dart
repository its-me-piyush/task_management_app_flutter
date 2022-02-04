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
      decription: [
        {
          'title': 'Go for a walk with dog',
          'time': '9:00 am',
          'slot': '9:00 - 10:00 am',
          'color': tmDarkRed,
          'backgroundColor': tmLightRed,
        },
        {
          'title': 'Shot on Dribble',
          'time': '10:00 am',
          'slot': '10:00 - 12:00 am',
          'color': tmDarkBlue,
          'backgroundColor': tmLightBlue,
        },
        {
          'title': '',
          'time': '11:00 am',
          'slot': '',
          'color': tmDarkBlue,
          'backgroundColor': tmLightBlue,
        },
        {
          'title': '',
          'time': '12:00 am',
          'slot': '',
          'color': Colors.grey.withOpacity(0.3),
          'backgroundColor': tmLightBlue,
        },
        {
          'title': 'Call with client',
          'time': '1:00 pm',
          'slot': '1:00 - 2:00 pm',
          'color': tmDarkYellow,
          'backgroundColor': tmLightYellow,
        },
        {
          'title': '',
          'time': '2:00 pm',
          'slot': '',
          'color': Colors.grey.withOpacity(0.3),
          'backgroundColor': tmLightBlue,
        },
        {
          'title': '',
          'time': '3:00 pm',
          'slot': '',
          'color': Colors.grey.withOpacity(0.3),
          'backgroundColor': tmLightBlue,
        },
      ],
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
