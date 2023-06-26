import 'package:flutter/material.dart';
import 'package:todo/src/app/entities/navigation/iapp_navigator.dart';
import 'package:todo/src/app/entities/navigation/navigation_option.dart';
import 'package:todo/src/presentation/shared%20resources/app_title.dart';
import 'package:todo/src/presentation/view%20models%20/home/home_view_model.dart';
import 'package:todo/src/presentation/views/home/navigation/navigation_option_container.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key, required this.navigator}) {
    viewModel = HomeViewModel(navigator: navigator);
  }

  late final HomeViewModel viewModel;
  final IAppNavigator navigator;

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    final List<NavigationOption> navigationOptions =
        viewModel.getNavigationOptions();

    var title = Padding(
        padding: EdgeInsets.only(left: s.width * 0.04, top: s.height * 0.045),
        child: const AppTitle('Sample App'));
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: s.width,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Color(0xFFF9F9F9)),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Column(
                children: [
                  title,
                  SizedBox(height: s.height * 0.03),
                  ...navigationOptions
                      .map((navOption) => NavigationOptionContainer(navOption))
                      .toList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
