import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/src/presentation/shared%20resources/palette.dart';

class NewTaskTextField extends StatelessWidget {
  final String labelText;
  final String initialValue;
  final Function(String) onChanged;
  final int maxLines;

  const NewTaskTextField({
    super.key,
    required this.labelText,
    required this.initialValue,
    required this.onChanged,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    var p = Palette();
    var borderRadius = BorderRadius.circular(8.0);
    var fieldPadding = const EdgeInsets.all(16.0);

    var fieldTextStyle = GoogleFonts.poppins(
      color: p.greyScale3,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
        child: TextFormField(
          maxLines: maxLines,
          initialValue: initialValue,
          style: fieldTextStyle,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: borderRadius,
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: fieldPadding,
            focusedBorder: OutlineInputBorder(
              borderRadius: borderRadius,
              borderSide: BorderSide(
                color: p.primary1,
                width: 2.0,
              ),
            ),
          ),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
