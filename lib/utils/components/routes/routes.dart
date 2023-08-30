import 'package:doctor_app/utils/components/routes/routes_name.dart';
import 'package:doctor_app/view/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../bottom_nav_bar.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {

    //route for Home Screen
      case RouteName.homePage:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

    //route for Bottom Navigation Bar
      case RouteName.BottomNavi:
        return MaterialPageRoute(builder: (_) => const BottomNavBar());



    //Statement to show as default route
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
