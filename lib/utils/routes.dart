import 'package:flutter/material.dart';
import 'package:routing/home_screen.dart';
import 'package:routing/second_screen.dart';
import 'package:routing/third_screen.dart';
import 'package:routing/utils/routes_names.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      case RouteName.secondScreen:
        return MaterialPageRoute(builder: (context) => SecondScreen(data: settings.arguments as Map,));

      case RouteName.thirdScreen:
        return MaterialPageRoute(
          builder: (context) => const ThirdScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Scaffold(
              body: Center(child: Text('no route defined')),
            );
          },
        );
    }
  }
}
