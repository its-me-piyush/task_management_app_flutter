import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management_app_flutter/models/tasks_model.dart';
import 'package:task_management_app_flutter/provider/tasks_provider.dart';
import 'package:task_management_app_flutter/screens/details/details.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tasksList = Provider.of<TasksProvider>(context).getTasksList;
    return Padding(
      padding: const EdgeInsets.all(15),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: tasksList.length,
        itemBuilder: (context, index) => tasksList[index].isEnd!
            ? _customAddTaskButton()
            : _customTaskDisplay(tasksList[index], context),
      ),
    );
  }

  DottedBorder _customAddTaskButton() {
    return DottedBorder(
        borderType: BorderType.RRect,
        radius: const Radius.circular(20),
        dashPattern: const [
          10,
          10,
        ],
        strokeWidth: 2,
        color: Colors.grey,
        child: const Center(
          child: Text(
            '+ Add',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
  }

  Widget _customTaskDisplay(TaskModel currentTask, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailScreen(taskModel: currentTask),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: currentTask.backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              currentTask.iconData,
              color: currentTask.iconColor,
              size: 35,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              currentTask.title!,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                _customTasksStatus(currentTask.buttonColor!,
                    '${currentTask.left} left', currentTask.iconColor!),
                const SizedBox(
                  width: 5,
                ),
                _customTasksStatus(Colors.white, '${currentTask.done} done',
                    currentTask.iconColor!),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container _customTasksStatus(
      Color buttonColor, String text, Color iconColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: iconColor,
        ),
      ),
    );
  }
}
