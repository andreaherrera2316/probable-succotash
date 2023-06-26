import 'package:todo/src/app/entities/navigation/iapp_navigator.dart';
import 'package:todo/src/app/entities/navigation/navigation_option.dart';
import 'package:todo/src/app/use%20cases/navigation/get_navigation_options.dart';

class HomeViewModel {
  late GetNavigationOptions getNavigationOptionsUseCase;

  HomeViewModel({required IAppNavigator navigator}) {
    getNavigationOptionsUseCase = GetNavigationOptions(navigator: navigator);
  }

  List<NavigationOption> getNavigationOptions() {
    return getNavigationOptionsUseCase.execute();
  }
}
