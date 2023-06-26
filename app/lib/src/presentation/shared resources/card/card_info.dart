import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/src/presentation/shared%20resources/emoji_icon.dart';
import 'package:todo/src/presentation/shared%20resources/palette.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.emoji});
  final String? emoji;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    var p = Palette();
    var emojiDisplay =
        emoji != null ? EmojiIconWidget(emoji: emoji!) : const SizedBox();

    var contentPadding = emoji == null || emoji!.isEmpty
        ? const EdgeInsets.only(right: 22)
        : const EdgeInsets.symmetric(horizontal: 22);

    var titleW = Text(
      title,
      maxLines: null,
      style: GoogleFonts.poppins(
        color: p.greyScale3,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    );

    var subtitleW = Text(
      subtitle,
      maxLines: null,
      style: GoogleFonts.poppins(
        color: const Color(0xFF808080),
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    );

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          emojiDisplay,
          Padding(
            padding: contentPadding,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                titleW,
                const SizedBox(height: 2),
                subtitleW,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
