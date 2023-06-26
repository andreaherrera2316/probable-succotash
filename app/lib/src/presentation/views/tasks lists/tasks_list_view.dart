import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/src/app/entities/navigation/iapp_navigator.dart';
import 'package:todo/src/app/entities/task.dart';
import 'package:todo/src/presentation/shared%20resources/app_title.dart';
import 'package:todo/src/presentation/shared%20resources/my_app_bar.dart';
import 'package:todo/src/presentation/shared%20resources/palette.dart';
import 'package:todo/src/presentation/view%20models%20/tasks%20list/tasks_list_view_model.dart';
import 'package:todo/src/presentation/views/tasks%20lists/tasks/tasks_container.dart';

class TasksList extends StatelessWidget {
  TasksList({required this.navigator, super.key}) {
    viewModel = TasksListViewModel();
  }
  final IAppNavigator navigator;
  late final TasksListViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    var p = Palette();
    var s = MediaQuery.of(context).size;
    final List<Task> tasks = viewModel.getTasks();

    var title = const AppTitle('Tasks');

    var tasksCount = Text(
      '${tasks.length} Tasks',
      style: GoogleFonts.poppins(
        color: const Color(0xFF808080),
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
    );

    var addTaskBtn = FloatingActionButton(
      backgroundColor: p.primary1,
      onPressed: navigator.navigateToAddTask,
      child: const Icon(
        Icons.add,
        color: Colors.white,
        size: 40,
      ),
    );

    var heading = Padding(
      padding: EdgeInsets.symmetric(
        horizontal: s.width * 0.06,
        vertical: s.height * 0.025,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title,
                tasksCount,
              ],
            ),
          ),
          addTaskBtn
        ],
      ),
    );
    return Scaffold(
      appBar: MyAppBar(),
      body: SafeArea(
        child: Container(
          width: s.width,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Color(0xFFF9F9F9)),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  heading,
                  ...tasks
                      .map(
                        (navOption) => TaskContainer(
                          navOption,
                          navigator: navigator,
                        ),
                      )
                      .toList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
