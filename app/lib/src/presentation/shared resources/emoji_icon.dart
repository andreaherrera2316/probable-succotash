import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmojiIconWidget extends StatelessWidget {
  const EmojiIconWidget({super.key, required this.emoji, this.size = 25});
  final String emoji;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      emoji,
      style: GoogleFonts.notoColorEmojiCompat(fontSize: size),
    );
  }
}
