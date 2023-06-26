import 'package:flutter/material.dart';
import 'package:todo/src/presentation/shared%20resources/palette.dart';

class MyAppBar extends AppBar {
  MyAppBar({super.key})
      : super(
            backgroundColor: Palette().appBar,
            foregroundColor: Palette().primary1,
            elevation: 0);
}
