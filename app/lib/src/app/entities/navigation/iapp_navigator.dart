import 'package:todo/src/app/entities/task.dart';

abstract class IAppNavigator {
  void navigateToTasksScreen();
  void navigateToHomeScreen();
  void navigateToAddTask();
  void navigateToTaskDetails(Task task);
}
