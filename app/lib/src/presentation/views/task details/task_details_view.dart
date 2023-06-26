import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/src/app/entities/task.dart';
import 'package:todo/src/presentation/shared%20resources/app_title.dart';
import 'package:todo/src/presentation/shared%20resources/my_app_bar.dart';
import 'package:todo/src/presentation/shared%20resources/palette.dart';
import 'package:todo/src/presentation/views/task%20details/details_text_field.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails({required this.task, Key? key}) : super(key: key);

  final Task task;

  @override
  Widget build(BuildContext context) {
    var p = Palette();
    var s = MediaQuery.of(context).size;

    final TextStyle contentStyle = GoogleFonts.poppins(
      height: 0.95,
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: p.greyScale2,
    );

    final TextStyle subtitleStyle = GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: p.greyScale4,
    );

    var title = const AppTitle('Task Preview');

    Widget trashIcon;

    try {
      trashIcon = FaIcon(
        FontAwesomeIcons.trashCan,
        size: 28,
        color: p.primary1,
      );
    } catch (e) {
      trashIcon = Icon(
        Icons.delete_outlined,
        color: p.primary1,
        size: 28,
      );
    }

    var deleteTaskBtn = FloatingActionButton(
      elevation: 0,
      backgroundColor: p.primary3,
      onPressed: () {},
      child: trashIcon,
    );

    var heading = Padding(
      padding: EdgeInsets.symmetric(
        horizontal: s.width * 0.06,
        vertical: s.height * 0.025,
      ),
      child: Row(
        children: [
          Flexible(
            child: title,
          ),
          deleteTaskBtn,
        ],
      ),
    );

    var details = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          DetailsTextField(
            title: 'Task',
            initialValue: task.task,
            contentStyle: contentStyle,
            subtitleStyle: subtitleStyle,
          ),
          DetailsTextField(
            title: 'Type',
            initialValue: task.type,
            contentStyle: contentStyle,
            subtitleStyle: subtitleStyle,
          ),
          DetailsTextField(
            title: 'Priority',
            initialValue: task.priority,
            contentStyle: contentStyle,
            subtitleStyle: subtitleStyle,
          ),
          DetailsTextField(
            title: 'Timeframe',
            initialValue: task.timeFrame,
            contentStyle: contentStyle,
            subtitleStyle: subtitleStyle,
          ),
          DetailsTextField(
            title: 'Description',
            initialValue: task.description,
            contentStyle: contentStyle,
            subtitleStyle: subtitleStyle,
          ),
        ],
      ),
    );
    return Scaffold(
      appBar: MyAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: s.width,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(color: Color(0xFFF9F9F9)),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Column(
                children: [
                  heading,
                  details,
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
