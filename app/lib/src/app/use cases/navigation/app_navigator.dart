import 'package:todo/src/app/entities/navigation/iapp_navigator.dart';
import 'package:flutter/material.dart';
import 'package:todo/src/app/entities/task.dart';
import 'package:todo/src/presentation/views/home/home_view.dart';
import 'package:todo/src/presentation/views/new%20task/new_task_view.dart';
import 'package:todo/src/presentation/views/task%20details/task_details_view.dart';
import 'package:todo/src/presentation/views/tasks%20lists/tasks_list_view.dart';

class AppNavigator implements IAppNavigator {
  final GlobalKey<NavigatorState> navigatorKey;

  AppNavigator(this.navigatorKey);

  @override
  void navigateToTasksScreen() {
    if (navigatorKey.currentState != null) {
      navigatorKey.currentState?.push(
        MaterialPageRoute(builder: (context) => TasksList(navigator: this)),
      );
    }
  }

  @override
  void navigateToHomeScreen() {
    navigatorKey.currentState?.push(
      MaterialPageRoute(builder: (context) => HomeView(navigator: this)),
    );
  }

  @override
  void navigateToTaskDetails(Task task) {
    navigatorKey.currentState?.push(
      MaterialPageRoute(builder: (context) => TaskDetails(task: task)),
    );
  }

  @override
  void navigateToAddTask() {
    navigatorKey.currentState?.push(
      MaterialPageRoute(builder: (context) => NewTask()),
    );
  }
}
