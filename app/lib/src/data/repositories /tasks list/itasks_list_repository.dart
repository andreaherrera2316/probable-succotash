import 'package:todo/src/app/entities/task.dart';

abstract class ITasksListRespository {
  List<Task> getTasks();
}
