import 'package:flutter/material.dart';

class TaskModel {
  IconData? iconData;
  String? title;
  Color? backgroundColor;
  Color? iconColor;
  Color? buttonColor;
  int? left;
  int? done;
  bool? isEnd;
  List<Map<String, dynamic>>? decription;
  TaskModel({
    this.iconData,
    this.title,
    this.backgroundColor,
    this.iconColor,
    this.buttonColor,
    this.left,
    this.done,
    this.isEnd = false,
    this.decription,
  });
}
