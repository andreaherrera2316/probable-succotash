import 'package:todo/src/app/entities/task.dart';
import 'package:todo/src/data/repositories%20/tasks%20list/itasks_list_repository.dart';
import 'package:todo/src/data/repositories%20/tasks%20list/tasks_list_repository.dart';

class GetTasks {
  const GetTasks({this.tasksListRespository = const TasksListRepository()});
  final ITasksListRespository tasksListRespository;
  List<Task> getTasks() {
    return tasksListRespository.getTasks();
  }
}
