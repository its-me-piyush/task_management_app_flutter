import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management_app_flutter/provider/tasks_provider.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tasksList = Provider.of<TasksProvider>(context).getTasksList;
    return Container(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: tasksList.length,
        itemBuilder: (context, index) => tasksList[index].isEnd!
            ? Container(
                child: Text('Add Task'),
              )
            : Container(
                child: Text('NOT END'),
              ),
      ),
    );
  }
}
