import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/src/presentation/shared%20resources/palette.dart';

class AppTitle extends StatelessWidget {
  const AppTitle(this.title, {Key? key}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    var p = Palette();
    return SizedBox(
        child: FractionallySizedBox(
      widthFactor: 0.965,
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: GoogleFonts.poppins(
          color: p.primary1,
          fontSize: 32,
          fontWeight: FontWeight.w600,
        ),
      ),
    ));
  }
}
