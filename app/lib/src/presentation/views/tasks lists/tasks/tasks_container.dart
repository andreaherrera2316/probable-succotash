import 'package:flutter/material.dart';
import 'package:todo/src/app/entities/navigation/iapp_navigator.dart';
import 'package:todo/src/app/entities/task.dart';
import 'package:todo/src/presentation/shared%20resources/card/card_container.dart';

import 'package:todo/src/presentation/shared%20resources/palette.dart';

class TaskContainer extends StatelessWidget {
  const TaskContainer(this.task, {required this.navigator, super.key});
  final Task task;
  final IAppNavigator navigator;

  @override
  Widget build(BuildContext context) {
    var p = Palette();
    return CardContainer(
        title: task.task,
        subtitle: task.timeFrame,
        onPressed: () {
          navigator.navigateToTaskDetails(task);
        },
        gradientColors: [
          p.primary3,
          p.container,
        ]);
  }
}
