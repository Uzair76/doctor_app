import 'package:doctor_app/res/app_theme.dart';
import 'package:doctor_app/utils/components/routes/routes.dart';
import 'package:doctor_app/utils/components/routes/routes_name.dart';
import 'package:doctor_app/view/home_screen.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: RouteName.BottomNavi,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

