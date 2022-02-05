import 'package:flutter/material.dart';
import 'package:task_management_app_flutter/models/tasks_model.dart';
import 'package:task_management_app_flutter/screens/details/components/custom_task_title.dart';

import 'components/custom_date_picker.dart';
import 'components/custom_task_time_line.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.taskModel}) : super(key: key);
  final TaskModel taskModel;

  @override
  Widget build(BuildContext context) {
    final detailList = taskModel.decription;
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          _customDetailAppBar(context),
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CustomDatePicker(),
                  CustomTaskTitle(),
                ],
              ),
            ),
          ),
          detailList == null
              ? SliverFillRemaining(
                  child: Container(
                      color: Colors.white,
                      child: const Center(
                          child: Text(
                        'No Tasks Today',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ))),
                )
              : SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => CustomTaskTimeline(
                      detail: detailList[index],
                    ),
                    childCount: detailList.length,
                  ),
                )
        ],
      ),
    );
  }

  SliverAppBar _customDetailAppBar(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 90,
      backgroundColor: Colors.black,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(Icons.arrow_back_ios_new_rounded),
        iconSize: 20,
      ),
      actions: const [
        Icon(
          Icons.more_vert,
          size: 40,
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${taskModel.title}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'You have ${taskModel.left} tasks left today!',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[700],
              ),
            )
          ],
        ),
      ),
    );
  }
}
