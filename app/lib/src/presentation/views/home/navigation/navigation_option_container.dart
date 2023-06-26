import 'package:flutter/material.dart';
import 'package:todo/src/app/entities/navigation/navigation_option.dart';
import 'package:todo/src/presentation/shared%20resources/card/card_container.dart';

import 'package:todo/src/presentation/shared%20resources/palette.dart';

class NavigationOptionContainer extends StatelessWidget {
  const NavigationOptionContainer(this.navOption, {super.key});
  final NavigationOption navOption;

  @override
  Widget build(BuildContext context) {
    var p = Palette();
    return CardContainer(
        title: navOption.title,
        emoji: navOption.emoji,
        subtitle: navOption.subtitle,
        onPressed: navOption.goToScreen,
        gradientColors: [
          p.primary3,
          p.container,
        ]);
  }
}
