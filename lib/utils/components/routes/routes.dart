import 'package:doctor_app/utils/components/routes/routes_name.dart';
import 'package:doctor_app/view/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {

      case RouteName.homePage:
        return MaterialPageRoute(builder: (_) => const HomeScreen());




      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          );
        });
    }
  }
}
