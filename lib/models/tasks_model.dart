import 'package:flutter/material.dart';

class TaskModel {
   IconData? iconData;
   String? title;
   Color? backgroundColor;
   Color? iconColor;
   Color? buttonColor;
   num? left;
   num? done;
  bool? isEnd;
  TaskModel({
     this.iconData,
     this.title,
     this.backgroundColor,
     this.iconColor,
     this.buttonColor,
     this.left,
     this.done,
    this.isEnd = false,
  });
}
