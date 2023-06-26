import 'package:todo/src/app/entities/navigation/iapp_navigator.dart';
import 'package:todo/src/app/entities/navigation/navigation_option.dart';
import 'package:todo/src/data/repositories%20/home/inavigation_options_repository.dart';
import 'package:todo/src/data/sources/home/navigation_data_source.dart';

class NavigationRepositoryImpl implements INavigationOptionsRepository {
  late NavigationDataSource dataSource;

  NavigationRepositoryImpl({required IAppNavigator navigator}) {
    dataSource = NavigationDataSource(navigator: navigator);
  }

  @override
  List<NavigationOption> getNavigationOptions() {
    return dataSource.getNavigationOptions();
  }
}
