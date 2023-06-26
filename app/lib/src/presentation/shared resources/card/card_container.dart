import 'package:flutter/material.dart';
import 'package:todo/src/presentation/shared%20resources/card/card_info.dart';
import 'package:todo/src/presentation/shared%20resources/card_icon_button.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({
    Key? key,
    required this.title,
    required this.subtitle,
    this.emoji,
    required this.onPressed,
    required this.gradientColors,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String? emoji;
  final Function onPressed;
  final List<Color> gradientColors;

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;

    return Center(
      child: Container(
        width: s.width * 0.91,
        margin: const EdgeInsets.only(top: 17),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 10,
              offset: const Offset(0, 4),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: CardInfoWidget(
                title: title,
                subtitle: subtitle,
                emoji: emoji,
              ),
            ),
            const SizedBox(width: 24),
            TasksIconWidget(Icons.arrow_forward_ios,
                onPressed: () => onPressed()),
          ],
        ),
      ),
    );
  }
}
