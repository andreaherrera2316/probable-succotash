import 'package:todo/src/app/entities/task.dart';
import 'package:todo/src/data/repositories%20/tasks%20list/itasks_list_repository.dart';
import 'package:todo/src/data/sources/tasks%20list/tasks_data_source.dart';

class TasksListRepository implements ITasksListRespository {
  const TasksListRepository({this.source = const TasksDataSource()});
  final TasksDataSource source;
  @override
  List<Task> getTasks() {
    return source.getTasks();
  }
}
