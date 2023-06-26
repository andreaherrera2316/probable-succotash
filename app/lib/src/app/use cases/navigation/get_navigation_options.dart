import 'package:todo/src/app/entities/navigation/iapp_navigator.dart';
import 'package:todo/src/app/entities/navigation/navigation_option.dart';
import 'package:todo/src/data/repositories%20/home/inavigation_options_repository.dart';
import 'package:todo/src/data/repositories%20/home/navigation_options_repository.dart';

class GetNavigationOptions {
  late INavigationOptionsRepository repository;

  GetNavigationOptions({required IAppNavigator navigator}) {
    repository = NavigationRepositoryImpl(navigator: navigator);
  }

  List<NavigationOption> execute() {
    return repository.getNavigationOptions();
  }
}
