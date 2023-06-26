import 'package:flutter/material.dart';
import 'package:todo/src/presentation/shared%20resources/palette.dart';

class TasksIconWidget extends StatelessWidget {
  const TasksIconWidget(this.iconData, {Key? key, required this.onPressed})
      : super(key: key);

  final IconData iconData;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        iconData,
        size: 20,
        color: Palette().primary1,
      ),
    );
  }
}
