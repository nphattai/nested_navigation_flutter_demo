import 'package:flutter/material.dart';
import 'package:nested_navigation_flutter_demo/pages/detail_page.dart';
import 'package:nested_navigation_flutter_demo/pages/home_page.dart';

class HomeNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: HomeRoutes.home,
      onGenerateRoute: (routeSettings) {
        var builder;
        switch (routeSettings.name) {
          case HomeRoutes.home:
            builder = HomePage();
            break;
          case HomeRoutes.detail:
            builder = DetailPage();
            break;
          default:
            break;
        }
        return MaterialPageRoute(
            builder: (_) => builder, settings: routeSettings);
      },
    );
  }
}

class HomeRoutes {
  static const home = '/';

  static const detail = '/detail';
}
