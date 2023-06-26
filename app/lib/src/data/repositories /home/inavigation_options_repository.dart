import 'package:todo/src/app/entities/navigation/navigation_option.dart';

abstract class INavigationOptionsRepository {
  List<NavigationOption> getNavigationOptions();
}
