import 'package:flutter/material.dart';
import 'package:todo/src/app/entities/navigation/iapp_navigator.dart';
import 'package:todo/src/app/use%20cases/navigation/app_navigator.dart';
import 'package:todo/src/presentation/shared%20resources/palette.dart';
import 'package:todo/src/presentation/views/home/home_view.dart';

void main() {
  final navigatorKey = GlobalKey<NavigatorState>();
  final appNavigator = AppNavigator(navigatorKey);
  runApp(MyApp(navigator: appNavigator, navigatorKey: navigatorKey));
}

class MyApp extends StatelessWidget {
  const MyApp({required this.navigator, required this.navigatorKey, super.key});

  final IAppNavigator navigator;
  final GlobalKey<NavigatorState> navigatorKey;

  @override
  Widget build(BuildContext context) {
    var p = Palette();

    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: navigatorKey,
      home: HomeView(
        navigator: navigator,
      ),
      theme: ThemeData(
        primaryColor: p.primary1,
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: p.primary1,
          primaryContainer: p.primary2,
          secondary: p.primary3,
          secondaryContainer: p.primary3,
          background: p.background,
          surface: p.container,
          onBackground: Colors.black,
          onSurface: Colors.black,
          onError: Colors.white,
          onPrimary: Colors.white,
          onSecondary: Colors.black,
          error: Colors.red,
        ),
      ),
    );
  }
}
