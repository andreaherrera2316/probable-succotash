import 'package:todo/src/app/entities/task.dart';
import 'package:todo/src/app/use%20cases/tasks%20list/get_tasks.dart';

class TasksListViewModel {
  TasksListViewModel({this.tasks = const GetTasks()});
  final GetTasks tasks;
  List<Task> getTasks() {
    return tasks.getTasks();
  }
}
