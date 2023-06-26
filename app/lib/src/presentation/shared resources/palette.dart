import 'package:flutter/material.dart';

class Palette {
  static const _instance = Palette._create();

  factory Palette() => _instance;
  const Palette._create();

  Color get primary1 => const Color(0xFF4942E4);
  Color get primary2 => const Color(0xFFC4D2FF);
  Color get primary3 => const Color(0xFFEDF3FF);

  Color get greyScale1 => const Color(0xFF1F1F1F);
  Color get greyScale2 => const Color(0xFF2A2A2A);
  Color get greyScale3 => const Color(0xFF404040);
  Color get greyScale4 => const Color(0xFF555555);

  Color get background => const Color(0xFFF9F9F9);
  Color get appBar => Colors.grey[50]!;
  Color get container => Colors.white; //const Color(0xFFF2F2F2);
  Color get inactiveTextField => const Color(0xFFE9E9E9);
}
