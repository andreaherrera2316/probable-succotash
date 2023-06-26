import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/src/presentation/shared%20resources/app_title.dart';
import 'package:todo/src/presentation/shared%20resources/my_app_bar.dart';
import 'package:todo/src/presentation/shared%20resources/palette.dart';
import 'package:todo/src/presentation/views/new%20task/new_task_dropdown.dart';
import 'package:todo/src/presentation/views/new%20task/new_task_text_field.dart';
import 'package:todo/src/presentation/views/new%20task/submit_button.dart';

class NewTask extends StatefulWidget {
  const NewTask({Key? key}) : super(key: key);

  @override
  State<NewTask> createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  String taskValue = '';
  String typeValue = '';
  String priorityValue = '';
  String timeframeValue = '';
  String descriptionValue = '';

  bool isFormValid() {
    return taskValue.isNotEmpty &&
        typeValue.isNotEmpty &&
        priorityValue.isNotEmpty &&
        timeframeValue.isNotEmpty &&
        descriptionValue.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    var p = Palette();
    var s = MediaQuery.of(context).size;
    var borderRadius = BorderRadius.circular(8.0);

    var fieldTextStyle = GoogleFonts.poppins(
      color: p.greyScale3,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    );

    var title = Padding(
      padding: EdgeInsets.symmetric(
        horizontal: s.width * 0.04,
        vertical: s.height * 0.025,
      ),
      child: const AppTitle('New Task'),
    );

    var taskField = NewTaskTextField(
      labelText: 'Task',
      initialValue: 'Text',
      onChanged: (value) {
        setState(() {
          taskValue = value;
        });
      },
    );

    var descriptionField = NewTaskTextField(
      labelText: 'Description',
      initialValue: '',
      onChanged: (value) {
        setState(() {
          descriptionValue = value;
        });
      },
      maxLines: 5,
    );

    var typeField = Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
      child: NewTaskDropdown(
        borderRadius: borderRadius,
        options: const ['Work', 'Personal Project', 'Self'],
        onChanged: (value) {
          setState(() {
            typeValue = value ?? '';
          });
        },
        textStyle: fieldTextStyle,
      ),
    );

    var priorityField = Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
      child: NewTaskDropdown(
        borderRadius: borderRadius,
        options: const ['Needs done', 'Nice to have', 'Nice idea'],
        onChanged: (value) {
          setState(() {
            priorityValue = value ?? '';
          });
        },
        textStyle: fieldTextStyle,
      ),
    );

    var timeframeField = Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
      child: NewTaskDropdown(
        textStyle: fieldTextStyle,
        borderRadius: borderRadius,
        onChanged: (value) {
          setState(() {
            timeframeValue = value ?? '';
          });
        },
        options: const [
          'None',
          'Today',
          '3 Days',
          'Week',
          'Fortnight',
          'Month',
          '90 Days',
          'Year'
        ],
      ),
    );

    var submitStyle = GoogleFonts.poppins(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    );

    var submitButton = SubmitButton(
      width: s.width * 0.91,
      onPressed: isFormValid() ? () {} : null,
      child: Text('Submit', style: submitStyle),
    );

    var s8 = const SizedBox(height: 8.0);
    var s16 = const SizedBox(height: 16.0);

    return Scaffold(
      appBar: MyAppBar(),
      floatingActionButton: submitButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
                  title,
                  SizedBox(height: s.height * 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: s.width * 0.06),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Task', style: fieldTextStyle),
                        s8,
                        taskField,
                        s16,
                        Text('Type', style: fieldTextStyle),
                        s8,
                        typeField,
                        s16,
                        Text('Priority', style: fieldTextStyle),
                        s8,
                        priorityField,
                        s16,
                        Text('Timeframe', style: fieldTextStyle),
                        s8,
                        timeframeField,
                        s16,
                        Text('Description', style: fieldTextStyle),
                        s8,
                        descriptionField,
                        const SizedBox(height: 60.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
