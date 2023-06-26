import 'package:todo/src/app/entities/navigation/iapp_navigator.dart';
import 'package:todo/src/app/entities/navigation/navigation_option.dart';

class NavigationDataSource {
  const NavigationDataSource({required this.navigator});

  final IAppNavigator navigator;

  List<NavigationOption> getNavigationOptions() {
    return [
      NavigationOption(
          title: 'Tasks',
          subtitle: '6 Tasks',
          emoji: '💻',
          goToScreen: navigator.navigateToTasksScreen)
    ];
  }
}
