import 'package:todo/src/app/entities/task.dart';

class TasksDataSource {
  const TasksDataSource();

  List<Task> getTasks() {
    List<Task> tasks = [
      Task(
        task: 'MockUp',
        type: "Design",
        priority: "High",
        timeFrame: "3 days",
        description: "Create UI mockup for the  app.",
      ),
      Task(
        task: 'Architecture',
        type: "Development",
        priority: "High",
        timeFrame: "Week",
        description: "Implement Clean Architecture for the project.",
      ),
      Task(
        task: 'Testing',
        type: "Development",
        priority: "High",
        timeFrame: "3 days",
        description: "Implement Test-Driven Development (TDD) framework.",
      ),
      Task(
        task: 'Eat pizza',
        type: 'Personal',
        priority: 'Low',
        timeFrame: 'Today',
        description: 'Enjoy a delicious pizza for lunch!',
      ),
      Task(
        task: 'Nap time',
        type: 'Personal',
        priority: 'Medium',
        timeFrame: 'Today',
        description: 'Take a power nap to recharge!',
      ),
      Task(
        task: 'Career Growth',
        type: 'Personal',
        priority: 'High',
        timeFrame: 'Ongoing',
        description:
            'Invest time in continuous learning and professional development to excel in my role.',
      ),
    ];

    return tasks;
  }
}
