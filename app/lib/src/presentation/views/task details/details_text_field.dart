import 'package:flutter/material.dart';
import 'package:todo/src/presentation/shared%20resources/palette.dart';

class DetailsTextField extends StatelessWidget {
  final String title;
  final String initialValue;
  final TextStyle contentStyle;
  final TextStyle subtitleStyle;
  final int? maxLines;

  const DetailsTextField({
    required this.title,
    required this.initialValue,
    required this.contentStyle,
    required this.subtitleStyle,
    this.maxLines,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var p = Palette();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 22),
        Text(
          title,
          style: subtitleStyle,
        ),
        TextFormField(
          maxLines: maxLines,
          initialValue: initialValue,
          style: contentStyle,
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: p.inactiveTextField,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: p.inactiveTextField,
              ),
            ),
          ),
          readOnly: true,
        ),
        const SizedBox(height: 22),
      ],
    );
  }
}
