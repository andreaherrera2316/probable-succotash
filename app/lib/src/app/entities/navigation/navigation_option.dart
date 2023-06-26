class NavigationOption {
  final String title;
  final String emoji;
  final String subtitle;
  final Function goToScreen;

  NavigationOption(
      {required this.title,
      required this.emoji,
      required this.subtitle,
      required this.goToScreen});
}
